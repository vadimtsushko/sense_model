// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_custom_error_message_convert;

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

/// A [ModelDecoder] for [NxCustomErrorMessage].
class NxCustomErrorMessageDecoder extends Converter<Map, NxCustomErrorMessage>
    implements ModelDecoder<NxCustomErrorMessage> {
  @override
  NxCustomErrorMessage create() => new NxCustomErrorMessage();
  @override
  NxCustomErrorMessage convert(Map input, [NxCustomErrorMessage model]) {
    model ??= create();

    model.calcCond = input['calcCond'];
    return model;
  }
}

/// A [ModelEncoder] for [NxCustomErrorMessage].
class NxCustomErrorMessageEncoder extends Converter<NxCustomErrorMessage, Map>
    implements ModelEncoder<NxCustomErrorMessage> {
  @override
  Map convert(NxCustomErrorMessage input) {
    var model = {};

    model['calcCond'] = input.calcCond;

    return model;
  }
}
