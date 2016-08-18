// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.convert.nx_inline_measure_def_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_measure_series_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxInlineMeasureDef].
class NxInlineMeasureDefDecoder extends Converter<Map, NxInlineMeasureDef>
    implements ModelDecoder<NxInlineMeasureDef> {
  final Converter<Map, NxMeasureSeries> _nxMeasureSeriesDecoder;
  NxInlineMeasureDefDecoder()
      : _nxMeasureSeriesDecoder = new NxMeasureSeriesDecoder();
  NxInlineMeasureDefDecoder.using(this._nxMeasureSeriesDecoder);
  @override
  NxInlineMeasureDef create() => new NxInlineMeasureDef();
  @override
  NxInlineMeasureDef convert(Map input, [NxInlineMeasureDef model]) {
    model ??= create();

    model.qLabel = input['qLabel'];
    model.qDescription = input['qDescription'];
    model.qDef = input['qDef'];
    model.qRelative = input['qRelative'];
    model.qBrutalSum = input['qBrutalSum'];
    model.qAggrFunc = input['qAggrFunc'];
    model.qAccumulate = input['qAccumulate'];
    model.qReverseSort = input['qReverseSort'];
    model.qActiveExpression = input['qActiveExpression'];
    model.qExpressions = input['qExpressions'];
    var series = input['series'];
    if (series != null) {
      model.series = _nxMeasureSeriesDecoder.convert(series);
    }
    model.qTags = input['qTags'];
    return model;
  }
}

/// A [ModelEncoder] for [NxInlineMeasureDef].
class NxInlineMeasureDefEncoder extends Converter<NxInlineMeasureDef, Map>
    implements ModelEncoder<NxInlineMeasureDef> {
  final Converter<NxMeasureSeries, Map> _nxMeasureSeriesEncoder;
  NxInlineMeasureDefEncoder()
      : _nxMeasureSeriesEncoder = new NxMeasureSeriesEncoder();
  NxInlineMeasureDefEncoder.using(this._nxMeasureSeriesEncoder);
  @override
  Map convert(NxInlineMeasureDef input) {
    var model = {};

    var qLabel = input.qLabel;
    if (qLabel != null) {
      model['qLabel'] = qLabel;
    }
    var qDescription = input.qDescription;
    if (qDescription != null) {
      model['qDescription'] = qDescription;
    }
    model['qDef'] = input.qDef;
    var qRelative = input.qRelative;
    if (qRelative != null) {
      model['qRelative'] = qRelative;
    }
    var qBrutalSum = input.qBrutalSum;
    if (qBrutalSum != null) {
      model['qBrutalSum'] = qBrutalSum;
    }
    var qAggrFunc = input.qAggrFunc;
    if (qAggrFunc != null) {
      model['qAggrFunc'] = qAggrFunc;
    }
    var qAccumulate = input.qAccumulate;
    if (qAccumulate != null) {
      model['qAccumulate'] = qAccumulate;
    }
    var qReverseSort = input.qReverseSort;
    if (qReverseSort != null) {
      model['qReverseSort'] = qReverseSort;
    }
    var qActiveExpression = input.qActiveExpression;
    if (qActiveExpression != null) {
      model['qActiveExpression'] = qActiveExpression;
    }
    var qExpressions = input.qExpressions;
    if (qExpressions != null) {
      model['qExpressions'] = qExpressions;
    }
    var series = input.series;
    if (series != null) {
      model['series'] = _nxMeasureSeriesEncoder.convert(series);
    }
    var qTags = input.qTags;
    if (qTags != null) {
      model['qTags'] = qTags;
    }

    return model;
  }
}
