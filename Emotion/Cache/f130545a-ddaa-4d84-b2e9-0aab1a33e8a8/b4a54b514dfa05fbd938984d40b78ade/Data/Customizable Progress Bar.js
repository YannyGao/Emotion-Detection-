//script.progressBarUpdate = (scoreMin, scoreMax, score, 
//                            {
//                                additive = false,
//                                removePointerOnCelebration = true,
//                                celebrationRevealDuration = 0.2,
//                                animationSpeed = 12,
//                            })
//
//script.resetProgressBar(progress)

//@input Asset.Material progressBarMaterial

//@input float maxProgression = 1.0 {"min":0, "max":1, "step":0.01}
//@input float minProgression = 0.2 {"min":0, "max":1, "step":0.01}
//@input float pointerScale = 0.3 
//@input float pointerAlignment = 1.0
//@input bool useFill = true
//@input bool usePointer = true
//@input bool celebrationProgressFollow = true
//@input bool useCelebration = false
//@input vec2 celebrationFrames = {4.0, 4.0}
//@input float celebrationScale = 1
//@input vec2 celebrationRealignment = {0, 0}

//@input Asset.Texture background
//@input Asset.Texture progression
//@input Asset.Texture pointer
//@input Asset.Texture celebration

const obj = script.getSceneObject();
const rect = obj.getComponent('Component.ScreenTransform');
const img = obj.createComponent('Component.Image');
const material = script.progressBarMaterial.clone();
const celebrationFrameCount = script.celebrationFrames.x + script.celebrationFrames.y;

//Material setup
material.mainPass.progressUpdate = 0;
material.mainPass.celebrate = 0;

material.mainPass.maxProgression = script.maxProgression;
material.mainPass.minProgression = script.minProgression;
material.mainPass.pointerScale = script.pointerScale;
material.mainPass.pointerAlignment = script.pointerAlignment;
material.mainPass.celebrationFrames = script.celebrationFrames;
material.mainPass.celebrationScale = script.celebrationScale;
material.mainPass.celebrationAlignment = script.celebrationRealignment;

material.mainPass.useFill = script.useFill;
material.mainPass.usePointer = script.usePointer;
material.mainPass.followPointer = script.celebrationProgressFollow;

if (script.background) material.mainPass.background = script.background;
if (script.progression) material.mainPass.progression = script.progression;
if (script.pointer) material.mainPass.pointer = script.pointer;
if (script.celebration) material.mainPass.celebration = script.celebration;

//Init
img.mainMaterial = material;
img.stretchMode = global.StretchMode['Fit'];

//Calls
let count = 0;
let alphaAnm = new animation();
let frameAnm = new animation();
let scaleAnm = new animation();
let update = script.createEvent('UpdateEvent');
let isCalled = false;

script.progressBarUpdate = (score, scoreMin, scoreMax,
                            {
                                additive = false,
                                removePointerOnCelebration = true,
                                celebrationRevealDuration = 0.2,
                                animationSpeed = 12,
                            } = {}) => 
{    
    
    if (additive) {
        count += score;
    } else {
        count = score;
    }

    material.mainPass.progressUpdate = MathUtils.clamp(MathUtils.remap(count, scoreMin, scoreMax, 0, 1), 0, 1);
    
    const celebrationCondition = scoreMax > scoreMin ? scoreMax : scoreMin;
    if (count >= celebrationCondition && script.useCelebration && !isCalled) {    
        update.bind( () => {
            if (removePointerOnCelebration) {
                material.mainPass.pointerScale = MathUtils.clamp(script.pointerScale - scaleAnm.play(.5, false, 'back', 
                                            () => material.mainPass.usePointer = false), 0, 1);
                
                material.mainPass.celebrationScale = MathUtils.clamp(script.celebrationScale * scaleAnm.play(.5, false, 'back'), 0, 1);
            } 
            material.mainPass.celebrate = alphaAnm.play(celebrationRevealDuration, false, 'sine');
            material.mainPass.celebrationTime = frameAnm.play(1, true) * animationSpeed;
        })
        
        isCalled = true;
    }
    
    return count;
}

script.resetProgressBar = (progress) => {
    count = 0;
    isCalled = false;
    material.mainPass.progressUpdate = progress;
    material.mainPass.celebrate = 0;
    material.mainPass.pointerScale = script.pointerScale;
    material.mainPass.celebrationScale = script.celebrationScale;
    material.mainPass.usePointer = script.usePointer;
    material.mainPass.celebrate = 0;
    material.mainPass.celebrationTime = 0;
    
    script.removeEvent(update);
    update = script.createEvent('UpdateEvent');
    
    alphaAnm.reset();
    frameAnm.reset();
    scaleAnm.reset();
}

//Function Definitions
function animation() {
    this.elapsedTime = null;
    this.isCalled = false;
    this.play = function (duration = 1, loop = false, ease = 'sine', callback) { 
        if(!this.elapsedTime) this.elapsedTime = getTime();
        let currentTime = getTime();
        time = MathUtils.clamp((currentTime - this.elapsedTime) / duration, 0, 1);
        if(ease == 'sine') {
            time = easeInOutSine(time);
        } else if (ease == 'back') {
            time = easeInOutBack(time);
        } else {
            
        }
    
        if (time >= 1) {
            if (loop){
                this.elapsedTime = currentTime;
                time = 0;
            } else {
                time = 1;
                
            }
            
            if (callback && !this.isCalled) {
                callback();
                isCalled = true;
            }
        }
        
        return time;
    }
    
    this.reset = function() {
        this.elapsedTime = null;
        this.isCalled = false;
    }
}

function easeInOutSine(x) {
    return -(Math.cos(Math.PI * x) - 1) / 2;
}

function easeInOutBack(x) {
    const c1 = 1.2;
    const c2 = c1 * 1.2;
    
    return x < 0.5
      ? (Math.pow(2 * x, 2) * ((c2 + 1) * 2 * x - c2)) / 2
      : (Math.pow(2 * x - 2, 2) * ((c2 + 1) * (x * 2 - 2) + c2) + 2) / 2;
}