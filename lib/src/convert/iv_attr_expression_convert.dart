// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.iv_attr_expression_convert;

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

/// A [ModelDecoder] for [IvAttrExpression].
class IvAttrExpressionDecoder extends Converter<Map, IvAttrExpression>
    implements ModelDecoder<IvAttrExpression> {
  @override
  IvAttrExpression create() => new IvAttrExpression();
  @override
  IvAttrExpression convert(Map input, [IvAttrExpression model]) {
    model ??= create();

    model.expression = input['expression'];
    model.inPlace = input['inPlace'];
    model.isStatic = input['isStatic'];
    return model;
  }
}

/// A [ModelEncoder] for [IvAttrExpression].
class IvAttrExpressionEncoder extends Converter<IvAttrExpression, Map>
    implements ModelEncoder<IvAttrExpression> {
  @override
  Map convert(IvAttrExpression input) {
    var model = {};

    model['expression'] = input.expression;
    var inPlace = input.inPlace;
    if (inPlace != null) {
      model['inPlace'] = inPlace;
    }
    var isStatic = input.isStatic;
    if (isStatic != null) {
      model['isStatic'] = isStatic;
    }

    return model;
  }
}
