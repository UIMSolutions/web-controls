module web.controls.alerts.alert;

@safe: 
import web.controls;

class DUIMAlertControl : DUIMControl {
  mixin(ControlThis!("UIMAlertControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["alert"])
      .attributes(["role":"alert"]);
  }
  
  mixin(OProperty!("string", "type"));
  mixin(OProperty!("string", "title"));
  mixin(OProperty!("bool", "dismissible"));
  mixin(OProperty!("bool", "important"));

  O addLink(this O)(string link, string text){
    this.addContent(H5A(["alert-link"], ["href":link], text));
    return cast(O)this;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    if (type || "alertType" in options) { 
      myClasses ~= "alert-"~options.get("alertType", this.type); 
    }

    if (dismissible) { 
      myClasses ~= "alert-dismissible"; 
      myContent ~= H5A(["btn-close"], ["data-bs-dismiss":"alert", "aria-label":"close"]); 
    }

    if (important) { myClasses ~= "alert-important"; }

    return [
      BS5Alert(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMAlertControl", "DUIMAlertControl"));
mixin(ControlCalls!("UIMAlert", "DUIMAlertControl"));

version(test_uim_controls) { unittest {
  assert(UIMAlert);

  mixin(TestControlBooleanAttributes!("UIMAlert", [
    "dismissible", "important"]));
  mixin(TestControlStringAttributes!("UIMAlert", [
    "type", "title"]));

  assert(UIMAlert.noId == `<div class="alert" role="alert"></div>`);

  assert(UIMAlert.noId.dismissible(true) == `<div class="alert alert-dismissible" role="alert"><a class="btn-close" aria-label="close" data-bs-dismiss="alert"></a></div>`);
}}
