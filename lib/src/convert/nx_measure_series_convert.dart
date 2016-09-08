// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-07 13:16:59.317938

library sense_model.src.convert.nx_measure_series_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxMeasureSeries].
class NxMeasureSeriesDecoder extends Converter<Map, NxMeasureSeries>
    implements ModelDecoder<NxMeasureSeries> {
  @override
  NxMeasureSeries create() => new NxMeasureSeries();
  @override
  NxMeasureSeries convert(Map input, [NxMeasureSeries model]) {
    model ??= create();

    model.type = input['type'];
    model.axis = input['axis'];
    model.marker = input['marker'];
    model.markerFill = input['markerFill'];
    return model;
  }
}

/// A [ModelEncoder] for [NxMeasureSeries].
class NxMeasureSeriesEncoder extends Converter<NxMeasureSeries, Map>
    implements ModelEncoder<NxMeasureSeries> {
  @override
  Map convert(NxMeasureSeries input) {
    var model = {};

    model['type'] = input.type;
    var axis = input.axis;
    if (axis != null) {
      model['axis'] = axis;
    }
    var marker = input.marker;
    if (marker != null) {
      model['marker'] = marker;
    }
    var markerFill = input.markerFill;
    if (markerFill != null) {
      model['markerFill'] = markerFill;
    }

    return model;
  }
}
