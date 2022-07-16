module uim.controls.forms.textarea;

@safe: 
import uim.controls;

class DUIMTextareaControl : DUIMControl {
  mixin(ControlThis!("UIMTextareaControl"));

  mixin(OProperty!("bool", "autofocus")); //autofocus	Specifies that a text area should automatically get focus when the page loads
  mixin(OProperty!("int", "cols")); //	number	Specifies the visible width of a text area
  mixin(OProperty!("string", "dirname")); //	textareaname.dir	Specifies that the text direction of the textarea will be submitted
  // mixin(OProperty!("bool", "disabled"));	//	Specifies that a text area should be disabled
  mixin(OProperty!("string", "form")); //	form_id	Specifies which form the text area belongs to
  mixin(OProperty!("int", "maxlength")); 	//	Specifies the maximum number of characters allowed in the text area
  mixin(OProperty!("string", "name")); //	Specifies a name for a text area
  mixin(OProperty!("string", "placeholder")); //	Specifies a short hint that describes the expected value of a text area
  mixin(OProperty!("bool", "readonly")); // Specifies that a text area should be read-only
  mixin(OProperty!("bool", "required")); 	// Specifies that a text area is required/must be filled out
  mixin(OProperty!("int", "rows")); // Specifies the visible number of lines in a text area
  mixin(OProperty!("string", "size")); // values: sm (small) or lg (large) for sizeof control
  mixin(OProperty!("string", "value")); // value of control
  mixin(OProperty!("string", "wrap")); //	values: hard, soft	Specifies how the text in a text area is to be wrapped when submitted in a form

  // Additional
  mixin(OProperty!("string", "description"));
  mixin(OProperty!("bool", "plaintext"));
  mixin(OProperty!("bool", "rounded"));
  mixin(OProperty!("bool", "flush"));

  // Binding to entity
  mixin(OProperty!("DOOPEntity", "entity"));
  mixin(OProperty!("string", "entityField"));

  // Icons
  mixin(OProperty!("string", "icon"));
  mixin(OProperty!("string", "iconColor"));
  mixin(OProperty!("string", "iconPosition"));
  mixin(OProperty!("string", "link"));

  // Validation
  mixin(OProperty!("string", "invalidText"));
  mixin(OProperty!("string", "validText"));
  mixin(OProperty!("bool", "valid"));
  mixin(OProperty!("bool", "invalid"));

  // Help
  mixin(OProperty!("string", "help"));
  mixin(OProperty!("string", "helpColor"));

  override void initialize() {
    super.initialize;

    this
      .classes(["form-control"]);
  }

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
    
    if (rounded) myClasses ~= "form-control-rounded";
    if (flush) myClasses ~= "form-control-flush";
    if (plaintext) myClasses = ["form-control-plaintext"];
    if (valid) myClasses ~= "is-valid";
    else if (invalid) myClasses ~= "is-invalid";      

    if (description) myAttributes["aria-describedby"] = myId~"-helpBlock";

    if (autofocus) myAttributes["autofocus"] = "autofocus";
    if (cols) myAttributes["cols"] = to!string(cols);
    if (dirname) myAttributes["dirname"] = dirname;
    if (disabled) myAttributes["disabled"] = "disabled";
    if (form) myAttributes["form"] = form;
    if (maxlength) myAttributes["maxlength"] = to!string(maxlength);
    if (name) myAttributes["name"] = name;
    if (placeholder) myAttributes["placeholder"] = placeholder;
    if (readonly) myAttributes["readonly"] = "readonly";
    if (required) myAttributes["required"] = "required";
    if (rows) myAttributes["rows"] = to!string(rows);
    if (size) myClasses ~= "form-control-"~size.toLower;
    if (value) myContent = [H5String(value)].toH5;
    if (wrap) myAttributes["wrap"] = wrap;
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    auto results = [H5Textarea(myId, myClasses, myAttributes, myContent)].toH5;

    if (icon) {
      if (!link) {
        if (iconPosition == "both") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results~H5Span(["input-icon-addon"], tablerIcon(icon)); 
        else if (iconPosition == "left") results = H5Span(["input-icon-addon"], tablerIcon(icon))~results;        
        else results ~= H5Span(["input-icon-addon"]~(iconColor ? "text-"~iconColor : null), tablerIcon(icon)); 

        results = [H5Div(["input-icon"], results)].toH5;
      }
      else {
        results = [
          BS5Row(["g-2"], 
            H5Div(["col"], results),
            H5Div(["col-auto"], 
              H5A(["btn btn-white btn-icon"], ["href":link, "aria-label":"Button"], tablerIcon(icon))))].toH5;
      }     
    }

    if (help) {
      results = [
        BS5Row(["g-2"], 
          H5Div(["col"], results),
          H5Div(["col-auto", "align-self-center"], 
            H5Span(["form-help"]~(helpColor ? "bg-"~helpColor : null), ["data-bs-toggle":"popover", "data-bts-placement":"top", "data-bs-content":help, "data-bs-html":"true"], "?")))].toH5;
    }       

    if (description) results ~= H5Div(myId~"-helpBlock", ["form-text"], description);
    
    if (valid && validText) results ~= H5Div(["valid-feedback"], validText);
    if (invalid && invalidText && !valid) results ~= H5Div(["invalid-feedback"], invalidText);

    return results;
  }
}
mixin(ControlCalls!("UIMTextareaControl", "DUIMTextareaControl"));
mixin(ControlCalls!("UIMTextarea", "DUIMTextareaControl"));

version(test_uim_controls) {
  unittest {
    assert(UIMTextarea);

    auto control = UIMTextarea;
  }
}
