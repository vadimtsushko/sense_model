// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_data_point_convert;

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

/// A [ModelDecoder] for [NxDataPoint].
class NxDataPointDecoder extends Converter<Map, NxDataPoint>
    implements ModelDecoder<NxDataPoint> {
  @override
  NxDataPoint create() => new NxDataPoint();
  @override
  NxDataPoint convert(Map input, [NxDataPoint model]) {
    model ??= create();

    model.show = input['show'];
    return model;
  }
}

/// A [ModelEncoder] for [NxDataPoint].
class NxDataPointEncoder extends Converter<NxDataPoint, Map>
    implements ModelEncoder<NxDataPoint> {
  @override
  Map convert(NxDataPoint input) {
    var model = {};

    model['show'] = input.show;

    return model;
  }
}