// SimpleAura.js
// A minimal script to create a colored aura around the head

var time = 0;
var colors = [
    new vec4(1.0, 0.9, 0.0, 0.7),  // Yellow (joy)
    new vec4(0.0, 0.4, 0.8, 0.7),  // Blue (sadness)
    new vec4(0.9, 0.1, 0.1, 0.7),  // Red (anger)
    new vec4(1.0, 0.5, 0.0, 0.7),  // Orange (surprise)
    new vec4(0.5, 0.0, 0.5, 0.7)   // Purple (fear)
];
var currentColor = 0;

function init() {
    // Get material from BlobPrefab
    var renderMeshVisual = script.getSceneObject().getComponent("Component.RenderMeshVisual");
    if (renderMeshVisual) {
        print("Found RenderMeshVisual component");
        // Apply initial color
        var material = renderMeshVisual.getMaterial(0);
        if (material && material.mainPass) {
            material.mainPass.baseColor = colors[currentColor];
            print("Applied initial color");
        } else {
            print("Material or mainPass not found");
        }
    } else {
        print("RenderMeshVisual not found on BlobPrefab");
    }
}

function update(eventData) {
    // Increment time
    time += eventData.getDeltaTime();
    
    // Update position - try to follow the face
    var faceMesh = script.getSceneObject().getScene().findObjectByName("Face Mesh");
    if (faceMesh) {
        var facePos = faceMesh.getTransform().getWorldPosition();
        script.getSceneObject().getTransform().setWorldPosition(
            new vec3(facePos.x, facePos.y + 0.1, facePos.z)
        );
    }
    
    // Create a pulsing effect
    var scale = 1.0 + Math.sin(time * 2) * 0.1;
    script.getSceneObject().getTransform().setLocalScale(new vec3(scale, scale, scale));
    
    // Change color periodically
    if (Math.floor(time) % 3 === 0 && Math.floor(time) !== Math.floor(time - eventData.getDeltaTime())) {
        currentColor = (currentColor + 1) % colors.length;
        
        // Apply new color
        var renderMeshVisual = script.getSceneObject().getComponent("Component.RenderMeshVisual");
        if (renderMeshVisual) {
            var material = renderMeshVisual.getMaterial(0);
            if (material && material.mainPass) {
                material.mainPass.baseColor = colors[currentColor];
            }
        }
    }
}

// Initialize and bind update event
init();
var updateEvent = script.createEvent("UpdateEvent");
updateEvent.bind(update);