module uim.controls.tabs.dropdown;

@safe:
import uim.controls;

class DUIMDropdownPaneControl : DUIMTabPaneControl {
  this() { super(); }

  override void initialize() {
    super.initialize;

    this
      .isDropdown(true);
  }

  override DH5Obj tabHeader(STRINGAA options = null) {
    auto navLink = H5A(["nav-link dropdown-toggle"]~tabLinkClasses, ["data-bs-toggle":"dropdown", "role":"button", "aria-haspopup":"true", "aria-expanded":"false"], (icon ? tablerIcon(icon) : "")~title);

    if (tooltip) { navLink.attribute("title", tooltip); }
    if (active) { 
      navLink
        .addClasses("active")
        .attribute("aria-selected", "true"); }
    else {
      navLink
        .attribute("tabindex", "-1")
        .attribute("aria-selected", "false"); }

    return 
      H5Li(["nav-item", "dropdown"]~tabClasses, 
        navLink~content
      );
  }

  override DH5Obj[] toH5(STRINGAA options = null) { 
    return null;
  }
}
auto UIMDropdownPaneControl() { return new DUIMDropdownPaneControl; }