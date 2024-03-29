module web.controls.inputs.color;

@safe: 
import web.controls;

class DUIMColorInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMColorInputControl"));

  override void initialize() {
    super.initialize;

    this
      .addClasses("form-control-color")
      .attributes(["type":"color"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMColorInputControl", "DUIMColorInputControl"));
mixin(ControlCalls!("UIMColorInput", "DUIMColorInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMColorInput);
  assert(UIMColorInput.noId == `<input class="form-control form-control-color" type="color">`);
}}
