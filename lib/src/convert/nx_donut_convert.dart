// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-02 10:38:39.164902

library sense_model.src.convert.nx_donut_convert;

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

/// A [ModelDecoder] for [NxDonut].
class NxDonutDecoder extends Converter<Map, NxDonut>
    implements ModelDecoder<NxDonut> {
  @override
  NxDonut create() => new NxDonut();
  @override
  NxDonut convert(Map input, [NxDonut model]) {
    model ??= create();

    model.showAsDonut = input['showAsDonut'];
    return model;
  }
}

/// A [ModelEncoder] for [NxDonut].
class NxDonutEncoder extends Converter<NxDonut, Map>
    implements ModelEncoder<NxDonut> {
  @override
  Map convert(NxDonut input) {
    var model = {};

    model['showAsDonut'] = input.showAsDonut;

    return model;
  }
}
