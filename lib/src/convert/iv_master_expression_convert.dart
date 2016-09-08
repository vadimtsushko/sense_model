// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.iv_master_expression_convert;

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

/// A [ModelDecoder] for [IvMasterExpression].
class IvMasterExpressionDecoder extends Converter<Map, IvMasterExpression>
    implements ModelDecoder<IvMasterExpression> {
  @override
  IvMasterExpression create() => new IvMasterExpression();
  @override
  IvMasterExpression convert(Map input, [IvMasterExpression model]) {
    model ??= create();

    model.family = input['family'];
    model.type = input['type'];
    model.command = input['command'];
    model.comment = input['comment'];
    model.definition = input['definition'];
    model.expandedDefinition = input['expandedDefinition'];
    model.label = input['label'];
    model.selectorLabel = input['selectorLabel'];
    model.macro = input['macro'];
    model.description = input['description'];
    model.width = input['width'];
    model.intWidth = input['intWidth'];
    model.name = input['name'];
    return model;
  }
}

/// A [ModelEncoder] for [IvMasterExpression].
class IvMasterExpressionEncoder extends Converter<IvMasterExpression, Map>
    implements ModelEncoder<IvMasterExpression> {
  @override
  Map convert(IvMasterExpression input) {
    var model = {};

    var family = input.family;
    if (family != null) {
      model['family'] = family;
    }
    var type = input.type;
    if (type != null) {
      model['type'] = type;
    }
    model['command'] = input.command;
    var comment = input.comment;
    if (comment != null) {
      model['comment'] = comment;
    }
    model['definition'] = input.definition;
    model['expandedDefinition'] = input.expandedDefinition;
    var label = input.label;
    if (label != null) {
      model['label'] = label;
    }
    var selectorLabel = input.selectorLabel;
    if (selectorLabel != null) {
      model['selectorLabel'] = selectorLabel;
    }
    var macro = input.macro;
    if (macro != null) {
      model['macro'] = macro;
    }
    var description = input.description;
    if (description != null) {
      model['description'] = description;
    }
    var width = input.width;
    if (width != null) {
      model['width'] = width;
    }
    var intWidth = input.intWidth;
    if (intWidth != null) {
      model['intWidth'] = intWidth;
    }
    model['name'] = input.name;

    return model;
  }
}
