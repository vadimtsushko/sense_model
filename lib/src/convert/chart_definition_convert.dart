// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.convert.chart_definition_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'iv_dimension_convert.dart';
import 'iv_measure_convert.dart';
import 'nx_bar_grouping_convert.dart';
import 'nx_color_convert.dart';
import 'nx_data_point_convert.dart';
import 'nx_dimension_axis_convert.dart';
import 'nx_donut_convert.dart';
import 'nx_grid_line_convert.dart';
import 'nx_legend_convert.dart';
import 'nx_measure_axis_convert.dart';
import 'nx_page_convert.dart';
import 'nx_ref_line_container_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [ChartDefinition].
class ChartDefinitionDecoder extends Converter<Map, ChartDefinition>
    implements ModelDecoder<ChartDefinition> {
  final Converter<Map, IvDimension> _ivDimensionDecoder;
  final Converter<Map, IvMeasure> _ivMeasureDecoder;
  final Converter<Map, NxRefLineContainer> _nxRefLineContainerDecoder;
  final Converter<Map, NxBarGrouping> _nxBarGroupingDecoder;
  final Converter<Map, NxDonut> _nxDonutDecoder;
  final Converter<Map, NxColor> _nxColorDecoder;
  final Converter<Map, NxDataPoint> _nxDataPointDecoder;
  final Converter<Map, NxLegend> _nxLegendDecoder;
  final Converter<Map, NxDimensionAxis> _nxDimensionAxisDecoder;
  final Converter<Map, NxPage> _nxPageDecoder;
  final Converter<Map, NxMeasureAxis> _nxMeasureAxisDecoder;
  final Converter<Map, NxGridLine> _nxGridLineDecoder;
  ChartDefinitionDecoder()
      : _ivDimensionDecoder = new IvDimensionDecoder(),
        _ivMeasureDecoder = new IvMeasureDecoder(),
        _nxRefLineContainerDecoder = new NxRefLineContainerDecoder(),
        _nxBarGroupingDecoder = new NxBarGroupingDecoder(),
        _nxDonutDecoder = new NxDonutDecoder(),
        _nxColorDecoder = new NxColorDecoder(),
        _nxDataPointDecoder = new NxDataPointDecoder(),
        _nxLegendDecoder = new NxLegendDecoder(),
        _nxDimensionAxisDecoder = new NxDimensionAxisDecoder(),
        _nxPageDecoder = new NxPageDecoder(),
        _nxMeasureAxisDecoder = new NxMeasureAxisDecoder(),
        _nxGridLineDecoder = new NxGridLineDecoder();
  ChartDefinitionDecoder.using(
      this._ivDimensionDecoder,
      this._ivMeasureDecoder,
      this._nxRefLineContainerDecoder,
      this._nxBarGroupingDecoder,
      this._nxDonutDecoder,
      this._nxColorDecoder,
      this._nxDataPointDecoder,
      this._nxLegendDecoder,
      this._nxDimensionAxisDecoder,
      this._nxPageDecoder,
      this._nxMeasureAxisDecoder,
      this._nxGridLineDecoder);
  @override
  ChartDefinition create() => new ChartDefinition();
  @override
  ChartDefinition convert(Map input, [ChartDefinition model]) {
    model ??= create();

    model.chartType = input['chartType'];
    model.chartId = input['chartId'];
    var dimensions = input['dimensions'];
    if (dimensions != null) {
      var dimensionsTemp0 = <IvDimension>[];
      for (var dimensionsValue0 in dimensions) {
        dimensionsTemp0.add(_ivDimensionDecoder.convert(dimensionsValue0));
      }
      model.dimensions = dimensionsTemp0;
    }
    model.measuresSelector = input['measuresSelector'];
    model.hierarchySelectors = input['hierarchySelectors'];
    var measures = input['measures'];
    if (measures != null) {
      var measuresTemp0 = <IvMeasure>[];
      for (var measuresValue0 in measures) {
        measuresTemp0.add(_ivMeasureDecoder.convert(measuresValue0));
      }
      model.measures = measuresTemp0;
    }
    model.title = input['title'];
    model.showTitles = input['showTitles'];
    model.qShowTotalsAbove = input['qShowTotalsAbove'];
    model.updateAfterCreation = input['updateAfterCreation'];
    model.alwaysRecreate = input['alwaysRecreate'];
    model.suppressLoadIndicator = input['suppressLoadIndicator'];
    model.hideEmptyMeasure = input['hideEmptyMeasure'];
    model.qPopulateMissing = input['qPopulateMissing'];
    model.hideNoPlanMeasure = input['hideNoPlanMeasure'];
    var refLine = input['refLine'];
    if (refLine != null) {
      model.refLine = _nxRefLineContainerDecoder.convert(refLine);
    }
    model.autoWidth = input['autoWidth'];
    model.subtitle = input['subtitle'];
    model.footnote = input['footnote'];
    var barGrouping = input['barGrouping'];
    if (barGrouping != null) {
      model.barGrouping = _nxBarGroupingDecoder.convert(barGrouping);
    }
    var donut = input['donut'];
    if (donut != null) {
      model.donut = _nxDonutDecoder.convert(donut);
    }
    var color = input['color'];
    if (color != null) {
      model.color = _nxColorDecoder.convert(color);
    }
    var dataPoint = input['dataPoint'];
    if (dataPoint != null) {
      model.dataPoint = _nxDataPointDecoder.convert(dataPoint);
    }
    var legend = input['legend'];
    if (legend != null) {
      model.legend = _nxLegendDecoder.convert(legend);
    }
    var dimensionAxis = input['dimensionAxis'];
    if (dimensionAxis != null) {
      model.dimensionAxis = _nxDimensionAxisDecoder.convert(dimensionAxis);
    }
    var qInitialDataFetch = input['qInitialDataFetch'];
    if (qInitialDataFetch != null) {
      model.qInitialDataFetch = _nxPageDecoder.convert(qInitialDataFetch);
    }
    var measureAxis = input['measureAxis'];
    if (measureAxis != null) {
      model.measureAxis = _nxMeasureAxisDecoder.convert(measureAxis);
    }
    model.preferContinuousAxis = input['preferContinuousAxis'];
    model.customErrorMessage = input['customErrorMessage'];
    model.nullMode = input['nullMode'];
    model.lineType = input['lineType'];
    model.stackedArea = input['stackedArea'];
    model.separateStacking = input['separateStacking'];
    var gridLine = input['gridLine'];
    if (gridLine != null) {
      model.gridLine = _nxGridLineDecoder.convert(gridLine);
    }
    model.suppressZero = input['suppressZero'];
    model.suppressMissing = input['suppressMissing'];
    model.sortbyYValue = input['sortbyYValue'];
    model.qInterColumnSortOrder = input['qInterColumnSortOrder'] as List<int>;
    model.qNoOfLeftDims = input['qNoOfLeftDims'];
    model.qSuppressZero = input['qSuppressZero'];
    model.qSuppressMissing = input['qSuppressMissing'];
    model.qAlwaysFullyExpanded = input['qAlwaysFullyExpanded'];
    model.columnOrder = input['columnOrder'] as List<int>;
    model.orientation = input['orientation'];
    return model;
  }
}

/// A [ModelEncoder] for [ChartDefinition].
class ChartDefinitionEncoder extends Converter<ChartDefinition, Map>
    implements ModelEncoder<ChartDefinition> {
  final Converter<IvDimension, Map> _ivDimensionEncoder;
  final Converter<IvMeasure, Map> _ivMeasureEncoder;
  final Converter<NxRefLineContainer, Map> _nxRefLineContainerEncoder;
  final Converter<NxBarGrouping, Map> _nxBarGroupingEncoder;
  final Converter<NxDonut, Map> _nxDonutEncoder;
  final Converter<NxColor, Map> _nxColorEncoder;
  final Converter<NxDataPoint, Map> _nxDataPointEncoder;
  final Converter<NxLegend, Map> _nxLegendEncoder;
  final Converter<NxDimensionAxis, Map> _nxDimensionAxisEncoder;
  final Converter<NxPage, Map> _nxPageEncoder;
  final Converter<NxMeasureAxis, Map> _nxMeasureAxisEncoder;
  final Converter<NxGridLine, Map> _nxGridLineEncoder;
  ChartDefinitionEncoder()
      : _ivDimensionEncoder = new IvDimensionEncoder(),
        _ivMeasureEncoder = new IvMeasureEncoder(),
        _nxRefLineContainerEncoder = new NxRefLineContainerEncoder(),
        _nxBarGroupingEncoder = new NxBarGroupingEncoder(),
        _nxDonutEncoder = new NxDonutEncoder(),
        _nxColorEncoder = new NxColorEncoder(),
        _nxDataPointEncoder = new NxDataPointEncoder(),
        _nxLegendEncoder = new NxLegendEncoder(),
        _nxDimensionAxisEncoder = new NxDimensionAxisEncoder(),
        _nxPageEncoder = new NxPageEncoder(),
        _nxMeasureAxisEncoder = new NxMeasureAxisEncoder(),
        _nxGridLineEncoder = new NxGridLineEncoder();
  ChartDefinitionEncoder.using(
      this._ivDimensionEncoder,
      this._ivMeasureEncoder,
      this._nxRefLineContainerEncoder,
      this._nxBarGroupingEncoder,
      this._nxDonutEncoder,
      this._nxColorEncoder,
      this._nxDataPointEncoder,
      this._nxLegendEncoder,
      this._nxDimensionAxisEncoder,
      this._nxPageEncoder,
      this._nxMeasureAxisEncoder,
      this._nxGridLineEncoder);
  @override
  Map convert(ChartDefinition input) {
    var model = {};

    model['chartType'] = input.chartType;
    model['chartId'] = input.chartId;
    var dimensions = input.dimensions;
    if (dimensions != null) {
      var dimensionsTemp0 = [];
      for (var dimensionsValue0 in dimensions) {
        dimensionsTemp0.add(_ivDimensionEncoder.convert(dimensionsValue0));
      }
      model['dimensions'] = dimensionsTemp0;
    }
    var measuresSelector = input.measuresSelector;
    if (measuresSelector != null) {
      model['measuresSelector'] = measuresSelector;
    }
    var hierarchySelectors = input.hierarchySelectors;
    if (hierarchySelectors != null) {
      model['hierarchySelectors'] = hierarchySelectors;
    }
    var measures = input.measures;
    if (measures != null) {
      var measuresTemp0 = [];
      for (var measuresValue0 in measures) {
        measuresTemp0.add(_ivMeasureEncoder.convert(measuresValue0));
      }
      model['measures'] = measuresTemp0;
    }
    var title = input.title;
    if (title != null) {
      model['title'] = title;
    }
    var showTitles = input.showTitles;
    if (showTitles != null) {
      model['showTitles'] = showTitles;
    }
    var qShowTotalsAbove = input.qShowTotalsAbove;
    if (qShowTotalsAbove != null) {
      model['qShowTotalsAbove'] = qShowTotalsAbove;
    }
    var updateAfterCreation = input.updateAfterCreation;
    if (updateAfterCreation != null) {
      model['updateAfterCreation'] = updateAfterCreation;
    }
    var alwaysRecreate = input.alwaysRecreate;
    if (alwaysRecreate != null) {
      model['alwaysRecreate'] = alwaysRecreate;
    }
    var suppressLoadIndicator = input.suppressLoadIndicator;
    if (suppressLoadIndicator != null) {
      model['suppressLoadIndicator'] = suppressLoadIndicator;
    }
    var hideEmptyMeasure = input.hideEmptyMeasure;
    if (hideEmptyMeasure != null) {
      model['hideEmptyMeasure'] = hideEmptyMeasure;
    }
    var qPopulateMissing = input.qPopulateMissing;
    if (qPopulateMissing != null) {
      model['qPopulateMissing'] = qPopulateMissing;
    }
    var hideNoPlanMeasure = input.hideNoPlanMeasure;
    if (hideNoPlanMeasure != null) {
      model['hideNoPlanMeasure'] = hideNoPlanMeasure;
    }
    var refLine = input.refLine;
    if (refLine != null) {
      model['refLine'] = _nxRefLineContainerEncoder.convert(refLine);
    }
    var autoWidth = input.autoWidth;
    if (autoWidth != null) {
      model['autoWidth'] = autoWidth;
    }
    var subtitle = input.subtitle;
    if (subtitle != null) {
      model['subtitle'] = subtitle;
    }
    var footnote = input.footnote;
    if (footnote != null) {
      model['footnote'] = footnote;
    }
    var barGrouping = input.barGrouping;
    if (barGrouping != null) {
      model['barGrouping'] = _nxBarGroupingEncoder.convert(barGrouping);
    }
    var donut = input.donut;
    if (donut != null) {
      model['donut'] = _nxDonutEncoder.convert(donut);
    }
    var color = input.color;
    if (color != null) {
      model['color'] = _nxColorEncoder.convert(color);
    }
    var dataPoint = input.dataPoint;
    if (dataPoint != null) {
      model['dataPoint'] = _nxDataPointEncoder.convert(dataPoint);
    }
    var legend = input.legend;
    if (legend != null) {
      model['legend'] = _nxLegendEncoder.convert(legend);
    }
    var dimensionAxis = input.dimensionAxis;
    if (dimensionAxis != null) {
      model['dimensionAxis'] = _nxDimensionAxisEncoder.convert(dimensionAxis);
    }
    var qInitialDataFetch = input.qInitialDataFetch;
    if (qInitialDataFetch != null) {
      model['qInitialDataFetch'] = _nxPageEncoder.convert(qInitialDataFetch);
    }
    var measureAxis = input.measureAxis;
    if (measureAxis != null) {
      model['measureAxis'] = _nxMeasureAxisEncoder.convert(measureAxis);
    }
    var preferContinuousAxis = input.preferContinuousAxis;
    if (preferContinuousAxis != null) {
      model['preferContinuousAxis'] = preferContinuousAxis;
    }
    var customErrorMessage = input.customErrorMessage;
    if (customErrorMessage != null) {
      model['customErrorMessage'] = customErrorMessage;
    }
    var nullMode = input.nullMode;
    if (nullMode != null) {
      model['nullMode'] = nullMode;
    }
    var lineType = input.lineType;
    if (lineType != null) {
      model['lineType'] = lineType;
    }
    var stackedArea = input.stackedArea;
    if (stackedArea != null) {
      model['stackedArea'] = stackedArea;
    }
    var separateStacking = input.separateStacking;
    if (separateStacking != null) {
      model['separateStacking'] = separateStacking;
    }
    var gridLine = input.gridLine;
    if (gridLine != null) {
      model['gridLine'] = _nxGridLineEncoder.convert(gridLine);
    }
    var suppressZero = input.suppressZero;
    if (suppressZero != null) {
      model['suppressZero'] = suppressZero;
    }
    var suppressMissing = input.suppressMissing;
    if (suppressMissing != null) {
      model['suppressMissing'] = suppressMissing;
    }
    var sortbyYValue = input.sortbyYValue;
    if (sortbyYValue != null) {
      model['sortbyYValue'] = sortbyYValue;
    }
    var qInterColumnSortOrder = input.qInterColumnSortOrder;
    if (qInterColumnSortOrder != null) {
      model['qInterColumnSortOrder'] = qInterColumnSortOrder;
    }
    var qNoOfLeftDims = input.qNoOfLeftDims;
    if (qNoOfLeftDims != null) {
      model['qNoOfLeftDims'] = qNoOfLeftDims;
    }
    var qSuppressZero = input.qSuppressZero;
    if (qSuppressZero != null) {
      model['qSuppressZero'] = qSuppressZero;
    }
    var qSuppressMissing = input.qSuppressMissing;
    if (qSuppressMissing != null) {
      model['qSuppressMissing'] = qSuppressMissing;
    }
    var qAlwaysFullyExpanded = input.qAlwaysFullyExpanded;
    if (qAlwaysFullyExpanded != null) {
      model['qAlwaysFullyExpanded'] = qAlwaysFullyExpanded;
    }
    var columnOrder = input.columnOrder;
    if (columnOrder != null) {
      model['columnOrder'] = columnOrder;
    }
    var orientation = input.orientation;
    if (orientation != null) {
      model['orientation'] = orientation;
    }

    return model;
  }
}
