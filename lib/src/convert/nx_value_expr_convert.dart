// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-07 13:16:59.317938

library sense_model.src.convert.nx_value_expr_convert;

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

/// A [ModelDecoder] for [NxValueExpr].
class NxValueExprDecoder extends Converter<Map, NxValueExpr>
    implements ModelDecoder<NxValueExpr> {
  @override
  NxValueExpr create() => new NxValueExpr();
  @override
  NxValueExpr convert(Map input, [NxValueExpr model]) {
    model ??= create();

    model.qv = input['qv'];
    return model;
  }
}

/// A [ModelEncoder] for [NxValueExpr].
class NxValueExprEncoder extends Converter<NxValueExpr, Map>
    implements ModelEncoder<NxValueExpr> {
  @override
  Map convert(NxValueExpr input) {
    var model = {};

    model['qv'] = input.qv;

    return model;
  }
}
