module web.controls.charts.polar;

@safe: 
import web.controls;

class DUIMPolarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMPolarChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("polar"); 
  }
}
mixin(ControlCalls!("UIMPolarChartControl", "DUIMPolarChartControl"));
mixin(ControlCalls!("UIMPolarChart", "DUIMPolarChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMPolarChart);

    auto control = UIMPolarChart;
  }
}

