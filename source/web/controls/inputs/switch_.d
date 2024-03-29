module web.controls.inputs.switch_;

@safe: 
import web.controls;

class DUIMSwitchControl : DUIMInputControl {
  mixin(ControlThis!("UIMSwitchControl"));

  mixin(OProperty!("bool", "checked"));
  mixin(OProperty!("bool", "inline"));
  // mixin(OProperty!("bool", "disabled"));
  mixin(OProperty!("string", "label"));
  // mixin(OProperty!("string", "description"));
  mixin(OProperty!("bool", "descriptionTop"));
  mixin(OProperty!("bool", "inputMode"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-check-input"])
      .attributes(["type":"checkbox"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    myClasses = myClasses.remove!(`a == "form-control"`);
    if (checked) myAttributes["checked"] = "checked";
    if (disabled) myAttributes["disabled"] = "disabled";
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (inputMode) {
      myClasses ~= "m-0";
      return [
        H5Span(["input-group-text"],
          H5Input(myId, myClasses, myAttributes))].toH5;
    }

    return [
      H5Div(["form-check", "form-switch"]~(inline ? "form-check-inline" : null), 
        (description && descriptionTop ? H5Span(["form-check-description"], description) : null),
        H5Input(myId, myClasses, myAttributes),
        (label ? H5Label(["form-check-label"], ["for":myId], label) : null),
        (description && !descriptionTop ? H5Span(["form-check-description", "mt-0"], description) : null)
      )].toH5;
  }
}

mixin(ControlCalls!("UIMSwitchControl", "DUIMSwitchControl"));
mixin(ControlCalls!("UIMSwitch", "DUIMSwitchControl"));

version(test_uim_controls) { unittest {
    assert(UIMSwitch);

    auto control = UIMSwitch;
  }
}
