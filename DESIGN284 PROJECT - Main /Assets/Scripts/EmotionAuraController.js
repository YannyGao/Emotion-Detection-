// EmotionAuraController.js
// Controls the emotion aura visualization based on detected facial expressions

// @input SceneObject faceObject {"label": "Face Object"}
// @input SceneObject auraObject {"label": "Aura Object"}
// @input Asset.Material auraMaterial {"label": "Aura Material"}
// @input bool showAdvancedOptions {"label": "Show Advanced Options"}
// @input float auraSize = 0.5 {"label": "Aura Size", "min": 0.1, "max": 1.0, "showIf": "showAdvancedOptions"}
// @input float animationSpeed = 0.5 {"label": "Animation Speed", "min": 0.1, "max": 2.0, "showIf": "showAdvancedOptions"}
// @input float positionOffset = 0.1 {"label": "Position Offset", "min": 0.0, "max": 0.5, "showIf": "showAdvancedOptions"}
// @input bool enableDebug {"label": "Enable Debug", "showIf": "showAdvancedOptions"}

// Emotion colors in RGB format
var emotionColors = {
    "joy": new vec4(1.0, 0.9, 0.0, 0.7),      // Yellow
    "sadness": new vec4(0.0, 0.4, 0.8, 0.7),  // Blue
    "anger": new vec4(0.9, 0.1, 0.1, 0.7),    // Red
    "fear": new vec4(0.5, 0.0, 0.5, 0.7),     // Purple
    "surprise": new vec4(1.0, 0.5, 0.0, 0.7), // Orange
    "disgust": new vec4(0.2, 0.8, 0.2, 0.7)   // Green
};
// Current emotional state (for demo, we'll animate between emotions)
var currentEmotion = "joy";
var targetEmotion = "joy";
var emotionBlendFactor = 0.0;
var currentColor = emotionColors["joy"];

// Animation variables
var time = 0;
var scaleOffset = 0;
var baseScale = 0;

// Initialize the script
// Initialize the script
function init() {
    // Auto-find objects if inputs aren't working
    script.faceObject = script.getSceneObject().getScene().findObjectByName("Face Mesh");
    script.auraObject = script.getSceneObject().getScene().findObjectByName("BlobPrefab");
    
    // Try to get material from BlobPrefab
    if (script.auraObject) {
        var renderMeshVisual = script.auraObject.getComponent("Component.RenderMeshVisual");
        if (renderMeshVisual) {
            script.auraMaterial = renderMeshVisual.getMaterial(0);
        }
    }
    
    // Print status
    print("Face Object found: " + (script.faceObject ? "Yes" : "No"));
    print("Aura Object found: " + (script.auraObject ? "Yes" : "No"));
    print("Aura Material found: " + (script.auraMaterial ? "Yes" : "No"));
    
    // Check if we have what we need
    if (!script.faceObject) {
        print("Error: Face Mesh not found!");
        return;
    }
    
    if (!script.auraObject) {
        print("Error: BlobPrefab not found!");
        return;
    }
    
    if (!script.auraMaterial) {
        print("Error: Material not found!");
        return;
    }
    
    // Store initial scale (using values from UI if available)
    baseScale = script.auraSize || 0.5;
    script.auraObject.getTransform().setLocalScale(new vec3(baseScale, baseScale, baseScale));
    
    // Position the aura initially
    updateAuraPosition();
    
    // Set initial color
    updateAuraColor(emotionColors[currentEmotion]);
    
    // For demo purposes, we'll change emotions periodically
    setInterval(changeRandomEmotion, 3.0);
    
    print("EmotionAuraController initialized!");
}

// Update function called every frame
function update(eventData) {
    // Update time
    time += eventData.getDeltaTime() * script.animationSpeed;
    
    // Update aura position to follow face
    updateAuraPosition();
    
    // Create subtle animation
    animateAura(time);
    
    // Blend between emotions if transitioning
    if (currentEmotion != targetEmotion) {
        emotionBlendFactor += eventData.getDeltaTime() * 1.0;
        if (emotionBlendFactor >= 1.0) {
            currentEmotion = targetEmotion;
            emotionBlendFactor = 0.0;
        } else {
            // Blend between current and target emotion colors
            var currentEmotionColor = emotionColors[currentEmotion];
            var targetEmotionColor = emotionColors[targetEmotion];
            var blendedColor = vec4.lerp(currentEmotionColor, targetEmotionColor, emotionBlendFactor);
            updateAuraColor(blendedColor);
        }
    }
}

// Update the aura position to follow the face
function updateAuraPosition() {
    if (!script.faceObject || !script.auraObject) return;
    
    // Get face position
    var faceTransform = script.faceObject.getTransform();
    var facePos = faceTransform.getWorldPosition();
    var faceRot = faceTransform.getWorldRotation();
    
    // Position aura slightly above the head
    var auraPos = new vec3(
        facePos.x,
        facePos.y + script.positionOffset,
        facePos.z
    );
    
    // Update aura transform
    script.auraObject.getTransform().setWorldPosition(auraPos);
    script.auraObject.getTransform().setWorldRotation(faceRot);
}

// Add subtle animation to the aura
function animateAura(time) {
    if (!script.auraObject) return;
    
    // Create a subtle pulsing effect
    scaleOffset = Math.sin(time * 2.0) * 0.05;
    var scale = baseScale * (1.0 + scaleOffset);
    
    // Apply scale animation
    script.auraObject.getTransform().setLocalScale(new vec3(scale, scale, scale));
}

// Update the aura color
function updateAuraColor(color) {
    if (!script.auraMaterial) return;
    
    // Store current color
    currentColor = color;
    
    // Apply color to material
    if (script.auraMaterial.mainPass) {
        script.auraMaterial.mainPass.baseColor = color;
    }
}

// Simulate emotion changes (for demo purposes)
function changeRandomEmotion() {
    var emotions = Object.keys(emotionColors);
    var randomIndex = Math.floor(Math.random() * emotions.length);
    var newEmotion = emotions[randomIndex];
    
    // Don't pick the same emotion twice
    if (newEmotion == targetEmotion) {
        randomIndex = (randomIndex + 1) % emotions.length;
        newEmotion = emotions[randomIndex];
    }
    
    if (script.enableDebug) {
        print("Changing emotion from " + currentEmotion + " to " + newEmotion);
    }
    
    targetEmotion = newEmotion;
}

// Initialize the script
init();

// Set up update callback
var updateEvent = script.createEvent("UpdateEvent");
updateEvent.bind(update);