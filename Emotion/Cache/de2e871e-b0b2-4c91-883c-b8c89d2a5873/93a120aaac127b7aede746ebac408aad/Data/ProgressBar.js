// PieChart.js (modified from ProgressBar.js)
// @input Component.Text labelTextComp
// @input Component.Text valueTextComp
// @input Component.Image pieChartImage

script.coef = 0.2;
script.precision = 2;

var so = script.getSceneObject();
var _value = 0.5;
var _label = "";

initialize();

Object.defineProperty(script, "value", {
    get: function() {
        return _value;
    },
    set: function(v) {
        _value = this.prevValue == undefined ? v : this.prevValue * (1 - this.coef) + v * this.coef;
        this.prevValue = _value;
        if (script.pass) {
            // For pie chart, we use the same percentage parameter
            this.pass.percentage = _value;
        }
        if (script.valueTextComp) {
            this.valueTextComp.text = _value.toFixed(script.precision).toString();
        }
    }
});

Object.defineProperty(script, "label", {
    get: function() {
        return _label;
    },
    set: function(l) {
        _label = l;
        if (script.labelTextComp) {
            this.labelTextComp.text = _label;
        }
    }
});

function setAspect() {
    var st = so.getComponent("Component.ScreenTransform");
    if (!st) {
        print("Scene Object " + so.name + " Doesn't have Screen Transform Component");
        return;
    }
    
    // Force 1:1 aspect ratio for pie chart
    var size = st.localPointToWorldPoint(new vec2(1, 1)).sub(st.localPointToWorldPoint(new vec2(-1, -1)));
    var minSize = Math.min(size.x, size.y);
    script.pass.aspect = new vec2(1, 1); // Always 1:1 for pie chart
    
    // You might need to adjust the scale of the screen transform to maintain proper sizing
    // st.scale = new vec2(minSize, minSize);
}

function initialize() {
    if (!script.labelTextComp) {
        print("Warning, Label Text Component input is not set on " + so.name);
    }
    if (!script.valueTextComp) {
        print("Warning, Value Text Component input is not set on " + so.name);
    }
    if (!script.pieChartImage) {
        print("Warning, Image Component input is not set on " + so.name);
    } else {
        script.pieChartImage.mainMaterial = script.pieChartImage.mainMaterial.clone();
        script.pass = script.pieChartImage.mainMaterial.mainPass;
        
        // Make sure to use a material with a pie chart shader
        
        var delayedEvent = script.createEvent("DelayedCallbackEvent");
        delayedEvent.bind(setAspect);
        delayedEvent.reset(0.1);
    }
    script._prevValue = undefined;
}