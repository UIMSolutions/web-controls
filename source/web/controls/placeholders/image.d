module web.controls.placeholders.image;

@safe: 
import web.controls;

class DUIMPlaceHolderImageControl : DUIMControl {
  mixin(ControlThis!("UIMPlaceHolderImageControl"));

  override void initialize() {
    super.initialize;

    this
      .classes(["placeholder-image"]);
  }
}
mixin(ControlCalls!("UIMPlaceHolderImageControl", "DUIMPlaceHolderImageControl"));
mixin(ControlCalls!("UIMPlaceHolderImage", "DUIMPlaceHolderImageControl"));

version(test_uim_controls) { unittest {
    assert(UIMPlaceHolderImage);

    auto control = UIMPlaceHolderImage;
    // TODO
  }
}
