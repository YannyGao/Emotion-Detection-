//@input float radius = 0.25
//@input float startAngle = -90 // degrees, top of circle
//@input float angleRange = 180 // total spread of halo
//@input SceneObject[] barObjects

function layoutHalo() {
    var count = script.barObjects.length;
    var angleStep = script.angleRange / Math.max(count - 1, 1);

    for (var i = 0; i < count; i++) {
        var angleDeg = script.startAngle + i * angleStep;
        var angleRad = angleDeg * Math.PI / 180;

        var x = script.radius * Math.cos(angleRad);
        var y = script.radius * Math.sin(angleRad);

        var bar = script.barObjects[i];
        if (!bar) continue;

        var st = bar.getComponent("Component.ScreenTransform");
        st.anchors.setCenter(new vec2(x, y));
        st.rotation = angleDeg; // optional: rotate to follow arc
    }
}

layoutHalo();
