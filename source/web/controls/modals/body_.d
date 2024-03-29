module web.controls.modals.body_;

@safe: 
import web.controls;

class DUIMModalBodyControl : DUIMControl {
  mixin(ControlThis!("UIMModalBodyControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("modal-body");
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);

  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMModalBodyControl", "DUIMModalBodyControl"));
mixin(ControlCalls!("UIMModalBody", "DUIMModalBodyControl"));

version(test_uim_controls) { unittest {
  assert(UIMModalBody);
  assert(UIMModalBody.noId == `<div class="modal-body"></div>`);
}}