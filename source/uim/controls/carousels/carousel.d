module uim.controls.carousels.carousel;

@safe: 
import uim.controls;

class DUIMCarouselControl : DUIMControl {
  this() { super(); }

  mixin(OProperty!("DUIMCarouselItemControl[]", "items"));
  mixin(OProperty!("bool", "showControls"));
  mixin(OProperty!("bool", "showIndicators"));

  override void initialize() {
    super.initialize;

    this
      .classes(["carousel", "slide"])
      .attributes(["data-bs-ride":"carousel"]);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    string myId = this.id.dup;
    auto myClasses = this.classes.dup;
    auto myAttributes = this.attributes.dup;

    auto indicatorCounter = 0;
    return [
      BS5Carousel(myId, myClasses, myAttributes, 
        (items  ? BS5CarouselInner(items.map!(item => item.toH5).join) 
                : null),
        ( showIndicators  ? BS5CarouselIndicators(items.map!(item => 
            cast(DH5Obj)H5Button([item.active ? "active" : null], 
            ["type":"button", "data-bs-target":"#"~myId, "data-bs-slide-to":to!string(++indicatorCounter), 
              "aria-current":"true", "aria-label":"Slide "~to!string(indicatorCounter)])).array) 
                          : null),
        ( showControls  ? H5A(["carousel-control-prev"], ["href":"#carousel-sample", "role":"button", "data-bs-slide":"prev"], 
                            H5Span(["carousel-control-prev-icon"], ["aria-hidden":"true"]),
                            H5Span(["visually-hidden"], "Previous")) 
                          : null),                  
        ( showControls  ? H5A(["carousel-control-next"], ["href":"#carousel-sample", "role":"button", "data-bs-slide":"next"],
                            H5Span(["carousel-control-next-icon"], ["aria-hidden":"true"]),
                            H5Span(["visually-hidden"], "Next")) 
                          : null)                  
      )
    ].toH5;
  }
}
auto UIMCarouselControl() { return new DUIMCarouselControl; }
