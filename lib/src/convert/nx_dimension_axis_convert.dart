// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.convert.nx_dimension_axis_convert;

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

/// A [ModelDecoder] for [NxDimensionAxis].
class NxDimensionAxisDecoder extends Converter<Map, NxDimensionAxis>
    implements ModelDecoder<NxDimensionAxis> {
  @override
  NxDimensionAxis create() => new NxDimensionAxis();
  @override
  NxDimensionAxis convert(Map input, [NxDimensionAxis model]) {
    model ??= create();

    model.show = input['show'];
    model.label = input['label'];
    model.dock = input['dock'];
    return model;
  }
}

/// A [ModelEncoder] for [NxDimensionAxis].
class NxDimensionAxisEncoder extends Converter<NxDimensionAxis, Map>
    implements ModelEncoder<NxDimensionAxis> {
  @override
  Map convert(NxDimensionAxis input) {
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

    return model;
  }
}
