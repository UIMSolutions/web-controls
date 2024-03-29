module web.controls.inputs.text;

@safe: 
import web.controls;

class DUIMTextInputControl : DUIMInputControl {
  mixin(ControlThis!("UIMTextInputControl"));

  override void initialize() {
    super.initialize;

    this
      .attributes(["type":"text"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }


}
mixin(ControlCalls!("UIMTextInputControl", "DUIMTextInputControl"));
mixin(ControlCalls!("UIMTextInput", "DUIMTextInputControl"));

version(test_uim_controls) { unittest {
  assert(UIMTextInput);
  assert(UIMTextInput.noId == `<input class="form-control" type="text">`);
}}
