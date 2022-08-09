module uim.controls.timelines.time;

@safe: 
import uim.controls;

class DUIMTimelineTimeControl : DUIMControl {
  mixin(ControlThis!("UIMTimelineTimeControl"));

  override void initialize() {
    super.initialize;
    
    this
      .classes(["list-timeline-time"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }
  
  override DH5Obj[] toH5(STRINGAA options = null) {
    auto results = super.toH5(options);

    return results~
      H5Div(myId, myClasses, myAttributes, myContent);
  }
}
mixin(ControlCalls!("UIMTimelineTimeControl", "DUIMTimelineTimeControl"));
mixin(ControlCalls!("UIMTimelineTime", "DUIMTimelineTimeControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTimelineTime);

    auto control = UIMTimelineTime;
  }
}