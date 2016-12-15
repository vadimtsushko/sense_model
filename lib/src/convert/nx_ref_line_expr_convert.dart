// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_ref_line_expr_convert;

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

/// A [ModelDecoder] for [NxRefLineExpr].
class NxRefLineExprDecoder extends Converter<Map, NxRefLineExpr>
    implements ModelDecoder<NxRefLineExpr> {
  @override
  NxRefLineExpr create() => new NxRefLineExpr();
  @override
  NxRefLineExpr convert(Map input, [NxRefLineExpr model]) {
    model ??= create();

    model.value = input['value'];
    model.label = input['label'];
    return model;
  }
}

/// A [ModelEncoder] for [NxRefLineExpr].
class NxRefLineExprEncoder extends Converter<NxRefLineExpr, Map>
    implements ModelEncoder<NxRefLineExpr> {
  @override
  Map convert(NxRefLineExpr input) {
    var model = {};

    model['value'] = input.value;
    var label = input.label;
    if (label != null) {
      model['label'] = label;
    }

    return model;
  }
}
