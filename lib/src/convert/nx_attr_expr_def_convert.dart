// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.convert.nx_attr_expr_def_convert;

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

/// A [ModelDecoder] for [NxAttrExprDef].
class NxAttrExprDefDecoder extends Converter<Map, NxAttrExprDef>
    implements ModelDecoder<NxAttrExprDef> {
  @override
  NxAttrExprDef create() => new NxAttrExprDef();
  @override
  NxAttrExprDef convert(Map input, [NxAttrExprDef model]) {
    model ??= create();

    model.qExpression = input['qExpression'];
    model.id = input['id'];
    return model;
  }
}

/// A [ModelEncoder] for [NxAttrExprDef].
class NxAttrExprDefEncoder extends Converter<NxAttrExprDef, Map>
    implements ModelEncoder<NxAttrExprDef> {
  @override
  Map convert(NxAttrExprDef input) {
    var model = {};

    model['qExpression'] = input.qExpression;
    model['id'] = input.id;

    return model;
  }
}
