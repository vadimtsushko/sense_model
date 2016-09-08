// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-07 13:16:59.317938

library sense_model.src.convert.nx_measure_axis_convert;

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

/// A [ModelDecoder] for [NxMeasureAxis].
class NxMeasureAxisDecoder extends Converter<Map, NxMeasureAxis>
    implements ModelDecoder<NxMeasureAxis> {
  @override
  NxMeasureAxis create() => new NxMeasureAxis();
  @override
  NxMeasureAxis convert(Map input, [NxMeasureAxis model]) {
    model ??= create();

    model.show = input['show'];
    model.label = input['label'];
    model.dock = input['dock'];
    model.logarithmic = input['logarithmic'];
    model.autoMinMax = input['autoMinMax'];
    model.minMax = input['minMax'];
    model.spacing = input['spacing'];
    model.min = input['min'];
    model.max = input['max'];
    return model;
  }
}

/// A [ModelEncoder] for [NxMeasureAxis].
class NxMeasureAxisEncoder extends Converter<NxMeasureAxis, Map>
    implements ModelEncoder<NxMeasureAxis> {
  @override
  Map convert(NxMeasureAxis input) {
    var model = {};

    model['show'] = input.show;
    var label = input.label;
    if (label != null) {
      model['label'] = label;
    }
    var dock = input.dock;
    if (dock != null) {
      model['dock'] = dock;
    }
    var logarithmic = input.logarithmic;
    if (logarithmic != null) {
      model['logarithmic'] = logarithmic;
    }
    var autoMinMax = input.autoMinMax;
    if (autoMinMax != null) {
      model['autoMinMax'] = autoMinMax;
    }
    var minMax = input.minMax;
    if (minMax != null) {
      model['minMax'] = minMax;
    }
    var spacing = input.spacing;
    if (spacing != null) {
      model['spacing'] = spacing;
    }
    var min = input.min;
    if (min != null) {
      model['min'] = min;
    }
    var max = input.max;
    if (max != null) {
      model['max'] = max;
    }

    return model;
  }
}
