// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 11:14:57.399257

library sense_model.src.convert.nx_field_attributes_convert;

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

/// A [ModelDecoder] for [NxFieldAttributes].
class NxFieldAttributesDecoder extends Converter<Map, NxFieldAttributes>
    implements ModelDecoder<NxFieldAttributes> {
  @override
  NxFieldAttributes create() => new NxFieldAttributes();
  @override
  NxFieldAttributes convert(Map input, [NxFieldAttributes model]) {
    model ??= create();

    model.qType = input['qType'];
    model.qnDec = input['qnDec'];
    model.qUseThou = input['qUseThou'];
    model.qFmt = input['qFmt'];
    model.qDec = input['qDec'];
    model.qThou = input['qThou'];
    return model;
  }
}

/// A [ModelEncoder] for [NxFieldAttributes].
class NxFieldAttributesEncoder extends Converter<NxFieldAttributes, Map>
    implements ModelEncoder<NxFieldAttributes> {
  @override
  Map convert(NxFieldAttributes input) {
    var model = {};

    model['qType'] = input.qType;
    model['qnDec'] = input.qnDec;
    model['qUseThou'] = input.qUseThou;
    model['qFmt'] = input.qFmt;
    model['qDec'] = input.qDec;
    model['qThou'] = input.qThou;

    return model;
  }
}
