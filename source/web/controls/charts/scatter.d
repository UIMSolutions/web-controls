module web.controls.charts.scatter;

@safe: 
import web.controls;

class DUIMScatterChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMScatterChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("scatter"); 
  }
}
mixin(ControlCalls!("UIMScatterChartControl", "DUIMScatterChartControl"));
mixin(ControlCalls!("UIMScatterChart", "DUIMScatterChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMScatterChart);

    auto control = UIMScatterChart;
  }
}

