module web.controls.factes.filters.list;

@safe: 
import web.controls;

// A LinkControl is a hyperlink control which is used to navigate to other pages or to trigger actions.
class DUIMFacetFilterListControl : DUIMControl {
  mixin(ControlThis!("UIMFacetFilterListControl"));

  override void initialize() {
    super.initialize;

    this
      .classes("facet-filter-list");
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    super.toH5(options);

    return [H5Div(myId, myClasses, myAttributes, myContent)].toH5;
  }
}
mixin(ControlCalls!("UIMFacetFilterListControl", "DUIMFacetFilterListControl"));
mixin(ControlCalls!("UIMFacetFilterList", "DUIMFacetFilterListControl"));

version(test_uim_controls) { unittest {
  assert(UIMFacetFilterList);
  assert(UIMFacetFilterList.noId == `<div class="facet-filter-list"></div>`);
}}
