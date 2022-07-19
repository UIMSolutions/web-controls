module uim.controls.forms.inputs.color;

@safe: 
import uim.controls;

class DUIMColorInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMColorInputControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control-color"])
      .attributes(["type":"color"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }
}
mixin(ControlCalls!("UIMColorInputControl", "DUIMColorInputControl"));
mixin(ControlCalls!("UIMColorInput", "DUIMColorInputControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMColorInput);

    auto control = UIMColorInput;
  }
}