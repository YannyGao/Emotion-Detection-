import { Interactable } from "SpectaclesInteractionKit/Components/Interaction/Interactable/Interactable";
import { InteractorEvent } from "SpectaclesInteractionKit/Core/Interactor/InteractorEvent";
import { SIK } from "SpectaclesInteractionKit/SIK";

const InternetModule = require("LensStudio:InternetModule");

@component
export class VisionOpenAI extends BaseScriptComponent {
  @input textOutput: Text;
  @input image: Image;
  @input emotionSpheres: SceneObject[]; // One for each emotion, index based on `index` below
  @input emotionLabels: Text[]; 

  apiKey: string = "INSERT YOUR API KEY HERE";
  private isProcessing: boolean = false;
  private elapsed = 0;
  private readonly intervalSeconds = 5;

  private readonly EMOTION_MAP = {
    happiness: { color: "#FFFF54", index: 4 },
    sadness: { color: "#5151FF", index: 10 },
    fear: { color: "#009600", index: 7 },
    anger: { color: "#FE0000", index: 2 },
    disgust: { color: "#FF54FF", index: 1 },
    surprise: { color: "#5ABDFF", index: 9 },
    trust: { color: "#53FF53", index: 5 },
    anticipation: { color: "#FEAB53", index: 3 },
    admiration: { color: "#01B400", index: 6 },
    confusion: { color: "#FFFFFF", index: 0 },
    neutrality: { color: "#D4EEFF", index: 8 },
  };

  onAwake() {
    this.onStart();
  }

  onStart() {

    print("textOutput is: " + this.textOutput);
    print("image is: " + this.image);
    this.onboardRainbowIntro();
    this.createEvent("UpdateEvent").bind(this.updateTimer.bind(this));
  }
    
  onboardRainbowIntro() {
    const delayBetween = 0.15; // seconds
    const baseScale = new vec3(3.5, 3.5, 3.5);
    const bounceScale = new vec3(5, 5, 5);

    for (let i = 0; i < this.emotionSpheres.length; i++) {
      const sphere = this.emotionSpheres[i];
      const label = this.emotionLabels[i];

      if (!sphere) continue;

      // Use a timer to create delay for each
      const delay = i * delayBetween;

      // Schedule pop-in for each
      const delayEvent = this.createEvent("DelayedCallbackEvent");
      delayEvent.bind(function () {
      sphere.enabled = true;
      sphere.getTransform().setLocalScale(bounceScale);

      const mesh = sphere.getComponent("Component.MaterialMeshVisual");
      if (mesh) {
          const emotion = Object.keys(this.EMOTION_MAP).find(
          key => this.EMOTION_MAP[key].index === i
          );
          if (emotion) {
          const config = this.EMOTION_MAP[emotion];
          mesh.mainMaterial.mainPass.baseColor = this.hexToVec4(config.color);
          if (label) label.text = emotion.charAt(0).toUpperCase() + emotion.slice(1);
          }
      }

      const t = sphere.getTransform();
      t.setLocalScale(bounceScale);
      const bounceEvent = this.createEvent("DelayedCallbackEvent");
      bounceEvent.bind(function () {
          t.setLocalScale(baseScale);
      });
      bounceEvent.reset(0.2);
      }.bind(this));
      delayEvent.reset(delay);

    }
  }

  updateTimer(event: UpdateEvent) {
    this.elapsed += event.getDeltaTime();
    if (this.elapsed >= this.intervalSeconds) {
      this.elapsed = 0;
      this.handleTrigger();
    }
  }

  async handleTrigger() {
    if (this.isProcessing) {
      print("A request is already in progress. Please wait.");
      return;
    }

    if (!this.image || !this.apiKey) {
      print("Image or API key is missing.");
      return;
    }

    try {
      this.isProcessing = true;

      const texture = this.image.mainPass.baseTex;
      if (!texture) {
        print("Texture not found in the image component.");
        return;
      }

      const base64Image = await this.encodeTextureToBase64(texture);

      const requestPayload = {
        model: "gpt-4o",
        messages: [
          {
            role: "system",
            content:
              "You are an empathetic assistant built into smart glasses. Given the image, identify the three most likely emotions from this list, ranked from most to least likely: confusion, disgust, anger, anticipation, happiness, trust, admiration, fear, neutrality, surprise, sadness. " +
              "Respond with only the three emotion words, comma-separated, in ranked order. No other text, explanation, or emojis.",
          },
          {
            role: "user",
            content: [
              {
                type: "text",
                text: "What do you think this person is feeling?",
              },
              {
                type: "image_url",
                image_url: {
                  url: `data:image/jpeg;base64,${base64Image}`,
                },
              },
            ],
          },
        ],
      };

      const request = new Request("https://api.openai.com/v1/chat/completions", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${this.apiKey}`,
        },
        body: JSON.stringify(requestPayload),
      });

      const response = await InternetModule.fetch(request);

      if (response.status === 200) {
        const responseData = await response.json();
        const reply = responseData.choices[0].message.content;

        this.textOutput.text = reply;
        print("AI response: " + reply);

        const emotions = reply.split(",").map(s => s.trim().toLowerCase());
        this.highlightEmotionSpheres(emotions);
      } else {
        const errorText = await response.text();
        print("API Error: " + response.status + " - " + errorText);
      }
    } catch (error) {
      print("OpenAI request failed: " + error);
    } finally {
      this.isProcessing = false;
    }
  }

  highlightEmotionSpheres(emotions: string[]) {
    // First disable all
    for (let i = 0; i < this.emotionSpheres.length; i++) {
      if (this.emotionSpheres[i]) this.emotionSpheres[i].enabled = false;
      if (this.emotionLabels[i]) this.emotionLabels[i].text = "";
      this.emotionSpheres[i].getTransform().setLocalScale(new vec3(3.5, 3.5, 3.5));
    }

    // Then enable and set color for the ones mentioned
    for (let i = 0; i < emotions.length; i++) {
      const emotion = emotions[i];
      const config = this.EMOTION_MAP[emotion];
      if (config) {
        const sphere = this.emotionSpheres[config.index];
        const label = this.emotionLabels[config.index];

        if (sphere) {
          sphere.enabled = true;
          const mesh = sphere.getComponent("Component.MaterialMeshVisual");
          if (mesh) {
            mesh.mainMaterial.mainPass.baseColor = this.hexToVec4(config.color);
          }

          // Make the first emotion larger
          if (i === 0) {
            sphere.getTransform().setLocalScale(new vec3(5, 5, 5)); // scale up dominant
          }
        }
        if (label) {
          label.text = emotion.charAt(0).toUpperCase() + emotion.slice(1); // Capitalize
        }        
      }
    }
  }

  hexToVec4(hex: string): vec4 {
    const r = parseInt(hex.substr(1, 2), 16) / 255;
    const g = parseInt(hex.substr(3, 2), 16) / 255;
    const b = parseInt(hex.substr(5, 2), 16) / 255;
    return new vec4(r, g, b, 1.0);
  }

  encodeTextureToBase64(texture) {
    return new Promise((resolve, reject) => {
      Base64.encodeTextureAsync(
        texture,
        resolve,
        reject,
        CompressionQuality.LowQuality,
        EncodingType.Jpg
      );
    });
  }
}
