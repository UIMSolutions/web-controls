module web.controls.charts.elements.legend;

@safe:
public import web.controls;

class DUIMChartLegendElement {
  this() {};

  mixin(OProperty!("bool", "show"));
  mixin(OProperty!("bool", "showForSingleSeries"));
  mixin(OProperty!("bool", "showForNullSeries"));
  mixin(OProperty!("bool", "showForZeroSeries"));

  mixin(OProperty!("string", "position"));
      
  mixin(OProperty!("string", "horizontalAlign"));
  mixin(OProperty!("bool", "floating"));
      
  mixin(OProperty!("string", "fontSize"));
  mixin(OProperty!("string", "fontFamily"));
  mixin(OProperty!("string", "fontWeight"));
  mixin(OProperty!("string", "formatter"));
  mixin(OProperty!("bool", "inverseOrder"));
  mixin(OProperty!("string", "width"));
  mixin(OProperty!("string", "height"));
  mixin(OProperty!("string", "tooltipHoverFormatter"));
  mixin(OProperty!("string", "customLegendItems"));
  mixin(OProperty!("string", "offsetX"));
  mixin(OProperty!("string", "offsetY"));
  
  
  override string toString() {
    STRINGAA results;

    if (show) results["show"] = to!string(show);
    if (showForSingleSeries) results["showForSingleSeries"] = to!string(showForSingleSeries);
    if (showForNullSeries) results["showForNullSeries"] = to!string(showForNullSeries);
    if (showForZeroSeries) results["showForZeroSeries"] = to!string(showForZeroSeries);
    if (position) results["position"] = position;
    if (horizontalAlign) results["horizontalAlign"] = horizontalAlign;
    if (floating) results["floating"] = to!string(floating);
    if (fontSize) results["fontSize"] = fontSize;
    if (fontFamily) results["fontFamily"] = fontFamily;
    if (fontWeight) results["fontWeight"] = fontWeight;
    if (formatter) results["formatter"] = formatter;
    if (inverseOrder) results["inverseOrder"] = to!string(inverseOrder);
    if (width) results["width"] = width;
    if (height) results["height"] = height;
    if (tooltipHoverFormatter) results["tooltipHoverFormatter"] = tooltipHoverFormatter;
    if (customLegendItems) results["customLegendItems"] = customLegendItems;
    if (offsetX) results["offsetX"] = offsetX;
    if (offsetY) results["offsetY"] = offsetY;

    return "{%s}".format(
      results.keys.map!(key => "%s:%s".format(key, results[key])).join(","));
  }
}
auto UIMChartLegendElement() { return new DUIMChartLegendElement; }

version(test_uim_controls) { unittest {
    assert(UIMChartLegendElement);

    auto element = UIMChartLegendElement;
  
  }
}

/* legend: {    
      labels: {
          colors: undefined,
          useSeriesColors: false
      },
      markers: {
          width: 12,
          height: 12,
          strokeWidth: 0,
          strokeColor: '#fff',
          fillColors: undefined,
          radius: 12,
          customHTML: undefined,
          onClick: undefined,
          offsetX: 0,
          offsetY: 0
      },
      itemMargin: {
          horizontal: 5,
          vertical: 0
      },
      onItemClick: {
          toggleDataSeries: true
      },
      onItemHover: {
          highlightDataSeries: true
      } */