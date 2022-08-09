module uim.controls.steps.container;

@safe: 
import uim.controls;

class DUIMStepsControl : DUIMControl {
  mixin(ControlThis!("UIMSteps"));

  mixin(OProperty!("string", "color"));
  mixin(OProperty!("bool", "counter"));

  override void initialize() {
    super.initialize;

    this
      .id("steps-%s".format(uniform(0, 1_000_000)))
      .classes(["steps"]);
  }
  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

    if (color) { myClasses ~= "steps-"~color; }
    if (counter) { myClasses ~= "steps-counter"; }
  }
  // Rendering
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results ~= H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMStepsControl", "DUIMStepsControl"));
mixin(ControlCalls!("UIMSteps", "DUIMStepsControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMSteps);
    assert(UIMSteps.id("test1") == `<div id="steps-743176" class="steps"></div>`);

    assert(UIMSteps.color("blue").color == "blue");
    assert(UIMSteps.id("test2").color("red") == `<div id="test2" class="steps steps-red"></div>`);

    assert(UIMSteps.counter(true).counter);
    assert(UIMSteps.id("test3").counter(true) == `<div id="test3" class="steps steps-counter"></div>`);
  }
}

