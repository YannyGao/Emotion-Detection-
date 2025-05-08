@component
export class NewScript extends BaseScriptComponent {
    @input
    moodmaterial: Material
    onAwake() {
        this.moodmaterial.mainPass.rotationAngle = Math.floor(Math.random() * 180); 
    }
}
