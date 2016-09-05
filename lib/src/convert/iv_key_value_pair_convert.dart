// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.convert.iv_key_value_pair_convert;

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

/// A [ModelDecoder] for [IvKeyValuePair].
class IvKeyValuePairDecoder extends Converter<Map, IvKeyValuePair>
    implements ModelDecoder<IvKeyValuePair> {
  @override
  IvKeyValuePair create() => new IvKeyValuePair();
  @override
  IvKeyValuePair convert(Map input, [IvKeyValuePair model]) {
    model ??= create();

    model.key = input['key'];
    model.value = input['value'];
    return model;
  }
}

/// A [ModelEncoder] for [IvKeyValuePair].
class IvKeyValuePairEncoder extends Converter<IvKeyValuePair, Map>
    implements ModelEncoder<IvKeyValuePair> {
  @override
  Map convert(IvKeyValuePair input) {
    var model = {};

    model['key'] = input.key;
    model['value'] = input.value;

    return model;
  }
}
