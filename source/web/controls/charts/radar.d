module web.controls.charts.radar;

@safe: 
import web.controls;

class DUIMRadarChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMRadarChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("radar"); 
  }
}
mixin(ControlCalls!("UIMRadarChartControl", "DUIMRadarChartControl"));
mixin(ControlCalls!("UIMRadarChart", "DUIMRadarChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMRadarChart);

    auto control = UIMRadarChart;
  }
}

