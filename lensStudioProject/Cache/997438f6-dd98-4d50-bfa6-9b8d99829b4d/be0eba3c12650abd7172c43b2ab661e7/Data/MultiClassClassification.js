// MultiClassClassification.js
// Runs ml model that classifies image into one of several classes
// Displays topK results 
// Version 1.0.0
// Event : onStartEvent 
// @input Component.Image bar0
// @input Component.Image bar1
// @input Component.Image bar2

// @input Component.MLComponent mlComponent
// @input Component.ScriptComponent labels
// @ui {"widget" : "separator"}

// @input float threshold = 0.7 {"widget" : "slider", "min" : "0", "max" : "1", "step" : "0.01"}
// @input int topK = 3 {"min" : "1"}
// @ui {"widget" : "separator"}
// @ui {"widget" : "label", "label" : "<b>Responses:<\b>"}
// @input bool callFunction {"hint" : "Call script function and pass top K classes probabilities and their labels as parameters"}
// @input Component.ScriptComponent scriptComponent {"showIf": "callFunction"}
// @input string functionName = "functionName"  {"showIf": "callFunction"}
// @ui {"widget" : "separator"}
// @input bool useBehavior {"hint" : "Call custom behavior trigger name prefix for each detected class"}
// @input string customTriggerPrefixFound = "FOUND_"{"showIf" : "useBehavior", "label" : "On Found Prefix"}
// @input string customTriggerPrefixLost = "LOST_"{"showIf" : "useBehavior", "label" : "On Lost Prefix"}
// @ui {"widget" : "separator"}
// @input bool printResultTo {"hint" : "Print array of detected classes to a text component"}
// @input Component.Text classText {"showIf" : "printResultTo"}
// @input string placeholderText = "Looking for flower..."  {"showIf" : "printResultTo"}


var mlInput;
var mlOutput;

var outputData;
var classCount;

var result;
var labels;

var prevClass = undefined;
var curClass = undefined;

const eps = 0.1;

const prefix = "class_";

var topKLabels = new Array(script.topK);
var topKScores = new Array(script.topK);

initialize();

function initialize() {
    //check if MLComponent is set
    if (!script.mlComponent) {
        print("ML Component is not set");
        return;
    }

    //get reference to the model input    
    mlInput = script.mlComponent.getInputs()[0];

    //check if input texture is set to avoid errors 
    if (!mlInput.texture) {
        print("Error, please set MLComponent Input Texture");
        return;
    }
    mlOutput = script.mlComponent.getOutputs()[0];

    //set on model loaded callback
    script.mlComponent.onLoadingFinished = wrapFunction(script.mlComponent.onLoadingFinished, onLoadingFinished);
    script.mlComponent.onRunningFinished = wrapFunction(script.mlComponent.onRunningFinished, onRunningFinished);

    //we are using autorun that runs model onUpdate - before the script update function
}

function onLoadingFinished() {
    outputData = mlOutput.data;
    classCount = outputData.length;

    result = new Array(classCount);

    if (!script.labels || !script.labels.labels) {
        labels = new Array(classCount);
        for (var i = 0; i < labels.length; i++) {
            labels[i] = prefix + i;
        }
    } else {
        labels = script.labels.labels;
    }
    if (script.useBehavior && !global.behaviorSystem) {
        print("Warning, add Behavior script to scene to send behavior triggers");
        script.useBehavior = false;
    }
    if (script.callFunction) {
        if (!script.scriptComponent) {
            print("Warning, add script with function to call");
            script.callFunction = false;
        } else if (script.functionName.length == 0) {
            print("Warning, Please set function name");
            script.callFunction = false;
        } else if (!script.scriptComponent[script.functionName]) {
            print("Warning, Provided script doesn't have script." + script.functionName + " function or it is not initialized yet");
        }
    }
}

function getColorForLabel(label) {
    switch (label) {
        case "Happy": return new vec4(1.0, 0.8, 0.0, 1.0);
        case "Sad": return new vec4(0.2, 0.5, 1.0, 1.0);
        case "Angry": return new vec4(1.0, 0.0, 0.0, 1.0);
        case "Surprise": return new vec4(1.0, 0.0, 1.0, 1.0);
        case "Fear": return new vec4(0.5, 0.0, 0.5, 1.0);
        case "Disgusted": return new vec4(0.0, 0.5, 0.2, 1.0);
        case "Neutral": return new vec4(0.7, 0.7, 0.7, 1.0);
        default: return new vec4(1.0, 1.0, 1.0, 1.0);
    }
}

function getDarkenedColor(label, score) {
    var base = getColorForLabel(label);
    var factor = score; // darker if higher
    return new vec4(base.x * factor, base.y * factor, base.z * factor, 1.0);
}

function onRunningFinished() {
    for (var i = 0; i < classCount; i++) {
        result[i] = {
            index: i,
            score: outputData[i]
        };
    }
    //sort by score from highest to lowest
    result.sort(compareScoreReversed);

    for (var j = 0; j < script.topK; j++) {
        topKScores[j] = result[j].score;
        topKLabels[j] = labels ? labels[result[j].index] : prefix + result[j].index;
    }
    if (script.callFunction && script.scriptComponent[script.functionName]) {
        script.scriptComponent[script.functionName](topKScores, topKLabels);
    }
    //if top class passed threshold
    if (result[0].score > script.threshold + eps) {
        curClass = result[0].index;
        if (prevClass != curClass) {
            if (script.printResultTo && script.classText) {
                script.classText.text = topKLabels[0];
            }
            if (script.useBehavior) {
                if (prevClass != undefined && prevClass > -1) {
                    global.behaviorSystem.sendCustomTrigger(script.customTriggerPrefixLost + labels[prevClass]);
                }
                global.behaviorSystem.sendCustomTrigger(script.customTriggerPrefixFound + labels[curClass]);
            }
        }
    } else if (result[0].score < script.threshold - eps) {
        // if none passed threshold
        curClass = -1;
        if (prevClass != curClass) {
            if (script.printResultTo && script.classText) {
                script.classText.text = script.placeholderText;
            }
            if (script.useBehavior) {
                if (prevClass != undefined) {
                    global.behaviorSystem.sendCustomTrigger(script.customTriggerPrefixLost + labels[prevClass]);
                }
            }
        }
    }
    prevClass = curClass;
    if (script.bar0 && script.bar0.mainMaterial) {
    script.bar0.mainMaterial.mainPass.baseColor = getDarkenedColor(topKLabels[0], topKScores[0]);
    }
    if (script.bar1 && script.bar1.mainMaterial) {
        script.bar1.mainMaterial.mainPass.baseColor = getDarkenedColor(topKLabels[1], topKScores[1]);
    }
    if (script.bar2 && script.bar2.mainMaterial) {
        script.bar2.mainMaterial.mainPass.baseColor = getDarkenedColor(topKLabels[2], topKScores[2]);
    }

}

function compareScoreReversed(a, b) {
    return b.score - a.score;
}

function wrapFunction(func1, func2) {
    if (func1 != null) {

        return function() {
            func1();
            func2();
        };
    } else {
        return func2;
    }
}
