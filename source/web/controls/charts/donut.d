module web.controls.charts.donut;

@safe: 
import web.controls;

class DUIMDonutChartControl : DUIMChartControl {
  mixin(ControlThis!("UIMDonutChartControl"));
  
  override void initialize() {
    super.initialize;

    this
      .type("donut"); 
  }
}
mixin(ControlCalls!("UIMDonutChartControl", "DUIMDonutChartControl"));
mixin(ControlCalls!("UIMDonutChart", "DUIMDonutChartControl"));

version(test_uim_controls) { unittest {
    assert(UIMDonutChart);

    auto control = UIMDonutChart;
  }
}

