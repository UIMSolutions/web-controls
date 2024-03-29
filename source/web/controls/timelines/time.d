module web.controls.timelines.time;

@safe: 
import web.controls;

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
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMTimelineTimeControl", "DUIMTimelineTimeControl"));
mixin(ControlCalls!("UIMTimelineTime", "DUIMTimelineTimeControl"));

version(test_uim_controls) { unittest {
  assert(UIMTimelineTime);
  assert(UIMTimelineTime.noId == `<div class="list-timeline-time"></div>`);
}}
