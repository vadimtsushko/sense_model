// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_options_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_bar_grouping_convert.dart';
import 'nx_color_convert.dart';
import 'nx_data_point_convert.dart';
import 'nx_dimension_axis_convert.dart';
import 'nx_dimension_convert.dart';
import 'nx_donut_convert.dart';
import 'nx_grid_line_convert.dart';
import 'nx_legend_convert.dart';
import 'nx_measure_axis_convert.dart';
import 'nx_ref_line_container_convert.dart';
import 'q_hyper_cube_def_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxOptions].
class NxOptionsDecoder extends Converter<Map, NxOptions>
    implements ModelDecoder<NxOptions> {
  final Converter<Map, NxBarGrouping> _nxBarGroupingDecoder;
  final Converter<Map, NxDonut> _nxDonutDecoder;
  final Converter<Map, NxDataPoint> _nxDataPointDecoder;
  final Converter<Map, NxLegend> _nxLegendDecoder;
  final Converter<Map, NxDimensionAxis> _nxDimensionAxisDecoder;
  final Converter<Map, NxMeasureAxis> _nxMeasureAxisDecoder;
  final Converter<Map, NxColor> _nxColorDecoder;
  final Converter<Map, NxGridLine> _nxGridLineDecoder;
  final Converter<Map, NxRefLineContainer> _nxRefLineContainerDecoder;
  final Converter<Map, NxDimension> _nxDimensionDecoder;
  final Converter<Map, QHyperCubeDef> _qHyperCubeDefDecoder;
  NxOptionsDecoder()
      : _nxBarGroupingDecoder = new NxBarGroupingDecoder(),
        _nxDonutDecoder = new NxDonutDecoder(),
        _nxDataPointDecoder = new NxDataPointDecoder(),
        _nxLegendDecoder = new NxLegendDecoder(),
        _nxDimensionAxisDecoder = new NxDimensionAxisDecoder(),
        _nxMeasureAxisDecoder = new NxMeasureAxisDecoder(),
        _nxColorDecoder = new NxColorDecoder(),
        _nxGridLineDecoder = new NxGridLineDecoder(),
        _nxRefLineContainerDecoder = new NxRefLineContainerDecoder(),
        _nxDimensionDecoder = new NxDimensionDecoder(),
        _qHyperCubeDefDecoder = new QHyperCubeDefDecoder();
  NxOptionsDecoder.using(
      this._nxBarGroupingDecoder,
      this._nxDonutDecoder,
      this._nxDataPointDecoder,
      this._nxLegendDecoder,
      this._nxDimensionAxisDecoder,
      this._nxMeasureAxisDecoder,
      this._nxColorDecoder,
      this._nxGridLineDecoder,
      this._nxRefLineContainerDecoder,
      this._nxDimensionDecoder,
      this._qHyperCubeDefDecoder);
  @override
  NxOptions create() => new NxOptions();
  @override
  NxOptions convert(Map input, [NxOptions model]) {
    model ??= create();

    model.title = input['title'];
    model.showTitles = input['showTitles'];
    model.subtitle = input['subtitle'];
    model.footnote = input['footnote'];
    model.preferContinuousAxis = input['preferContinuousAxis'];
    var barGrouping = input['barGrouping'];
    if (barGrouping != null) {
      model.barGrouping = _nxBarGroupingDecoder.convert(barGrouping);
    }
    var donut = input['donut'];
    if (donut != null) {
      model.donut = _nxDonutDecoder.convert(donut);
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
    var measureAxis = input['measureAxis'];
    if (measureAxis != null) {
      model.measureAxis = _nxMeasureAxisDecoder.convert(measureAxis);
    }
    var color = input['color'];
    if (color != null) {
      model.color = _nxColorDecoder.convert(color);
    }
    model.nullMode = input['nullMode'];
    model.lineType = input['lineType'];
    model.stackedArea = input['stackedArea'];
    model.separateStacking = input['separateStacking'];
    var gridLine = input['gridLine'];
    if (gridLine != null) {
      model.gridLine = _nxGridLineDecoder.convert(gridLine);
    }
    var refLine = input['refLine'];
    if (refLine != null) {
      model.refLine = _nxRefLineContainerDecoder.convert(refLine);
    }
    model.orientation = input['orientation'];
    var qListObjectDef = input['qListObjectDef'];
    if (qListObjectDef != null) {
      model.qListObjectDef = _nxDimensionDecoder.convert(qListObjectDef);
    }
    var qHyperCubeDef = input['qHyperCubeDef'];
    if (qHyperCubeDef != null) {
      model.qHyperCubeDef = _qHyperCubeDefDecoder.convert(qHyperCubeDef);
    }

    return model;
  }
}

/// A [ModelEncoder] for [NxOptions].
class NxOptionsEncoder extends Converter<NxOptions, Map>
    implements ModelEncoder<NxOptions> {
  final Converter<NxBarGrouping, Map> _nxBarGroupingEncoder;
  final Converter<NxDonut, Map> _nxDonutEncoder;
  final Converter<NxDataPoint, Map> _nxDataPointEncoder;
  final Converter<NxLegend, Map> _nxLegendEncoder;
  final Converter<NxDimensionAxis, Map> _nxDimensionAxisEncoder;
  final Converter<NxMeasureAxis, Map> _nxMeasureAxisEncoder;
  final Converter<NxColor, Map> _nxColorEncoder;
  final Converter<NxGridLine, Map> _nxGridLineEncoder;
  final Converter<NxRefLineContainer, Map> _nxRefLineContainerEncoder;
  final Converter<NxDimension, Map> _nxDimensionEncoder;
  final Converter<QHyperCubeDef, Map> _qHyperCubeDefEncoder;
  NxOptionsEncoder()
      : _nxBarGroupingEncoder = new NxBarGroupingEncoder(),
        _nxDonutEncoder = new NxDonutEncoder(),
        _nxDataPointEncoder = new NxDataPointEncoder(),
        _nxLegendEncoder = new NxLegendEncoder(),
        _nxDimensionAxisEncoder = new NxDimensionAxisEncoder(),
        _nxMeasureAxisEncoder = new NxMeasureAxisEncoder(),
        _nxColorEncoder = new NxColorEncoder(),
        _nxGridLineEncoder = new NxGridLineEncoder(),
        _nxRefLineContainerEncoder = new NxRefLineContainerEncoder(),
        _nxDimensionEncoder = new NxDimensionEncoder(),
        _qHyperCubeDefEncoder = new QHyperCubeDefEncoder();
  NxOptionsEncoder.using(
      this._nxBarGroupingEncoder,
      this._nxDonutEncoder,
      this._nxDataPointEncoder,
      this._nxLegendEncoder,
      this._nxDimensionAxisEncoder,
      this._nxMeasureAxisEncoder,
      this._nxColorEncoder,
      this._nxGridLineEncoder,
      this._nxRefLineContainerEncoder,
      this._nxDimensionEncoder,
      this._qHyperCubeDefEncoder);
  @override
  Map convert(NxOptions input) {
    var model = {};

    model['title'] = input.title;
    var showTitles = input.showTitles;
    if (showTitles != null) {
      model['showTitles'] = showTitles;
    }
    var subtitle = input.subtitle;
    if (subtitle != null) {
      model['subtitle'] = subtitle;
    }
    var footnote = input.footnote;
    if (footnote != null) {
      model['footnote'] = footnote;
    }
    var preferContinuousAxis = input.preferContinuousAxis;
    if (preferContinuousAxis != null) {
      model['preferContinuousAxis'] = preferContinuousAxis;
    }
    var barGrouping = input.barGrouping;
    if (barGrouping != null) {
      model['barGrouping'] = _nxBarGroupingEncoder.convert(barGrouping);
    }
    var donut = input.donut;
    if (donut != null) {
      model['donut'] = _nxDonutEncoder.convert(donut);
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
    var measureAxis = input.measureAxis;
    if (measureAxis != null) {
      model['measureAxis'] = _nxMeasureAxisEncoder.convert(measureAxis);
    }
    var color = input.color;
    if (color != null) {
      model['color'] = _nxColorEncoder.convert(color);
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
    var refLine = input.refLine;
    if (refLine != null) {
      model['refLine'] = _nxRefLineContainerEncoder.convert(refLine);
    }
    var orientation = input.orientation;
    if (orientation != null) {
      model['orientation'] = orientation;
    }
    var qListObjectDef = input.qListObjectDef;
    if (qListObjectDef != null) {
      model['qListObjectDef'] = _nxDimensionEncoder.convert(qListObjectDef);
    }
    var qHyperCubeDef = input.qHyperCubeDef;
    if (qHyperCubeDef != null) {
      model['qHyperCubeDef'] = _qHyperCubeDefEncoder.convert(qHyperCubeDef);
    }

    return model;
  }
}
