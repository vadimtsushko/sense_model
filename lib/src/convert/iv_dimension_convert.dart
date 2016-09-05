// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.convert.iv_dimension_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'iv_attr_expression_convert.dart';
import 'iv_measure_convert.dart';
import 'nx_other_total_spec_prop_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [IvDimension].
class IvDimensionDecoder extends Converter<Map, IvDimension>
    implements ModelDecoder<IvDimension> {
  final Converter<Map, IvMeasure> _ivMeasureDecoder;
  final Converter<Map, NxOtherTotalSpecProp> _nxOtherTotalSpecPropDecoder;
  final Converter<Map, IvAttrExpression> _ivAttrExpressionDecoder;
  IvDimensionDecoder()
      : _ivMeasureDecoder = new IvMeasureDecoder(),
        _nxOtherTotalSpecPropDecoder = new NxOtherTotalSpecPropDecoder(),
        _ivAttrExpressionDecoder = new IvAttrExpressionDecoder();
  IvDimensionDecoder.using(this._ivMeasureDecoder,
      this._nxOtherTotalSpecPropDecoder, this._ivAttrExpressionDecoder);
  @override
  IvDimension create() => new IvDimension();
  @override
  IvDimension convert(Map input, [IvDimension model]) {
    model ??= create();

    model.isStatic = input['isStatic'];
    model.dynamicHyerarchy = input['dynamicHyerarchy'];
    model.measureSelector = input['measureSelector'];
    model.contitional = input['contitional'];
    model.width = input['width'];
    model.sortByNumeric = input['sortByNumeric'];
    model.sortByAscii = input['sortByAscii'];
    model.sortByLoadOrder = input['sortByLoadOrder'];
    var sortByExpression = input['sortByExpression'];
    if (sortByExpression != null) {
      model.sortByExpression = _ivMeasureDecoder.convert(sortByExpression);
    }
    model.visible = input['visible'];
    var qOtherTotalSpec = input['qOtherTotalSpec'];
    if (qOtherTotalSpec != null) {
      model.qOtherTotalSpec =
          _nxOtherTotalSpecPropDecoder.convert(qOtherTotalSpec);
    }
    var backgroundColor = input['backgroundColor'];
    if (backgroundColor != null) {
      model.backgroundColor = _ivAttrExpressionDecoder.convert(backgroundColor);
    }
    var fontColor = input['fontColor'];
    if (fontColor != null) {
      model.fontColor = _ivAttrExpressionDecoder.convert(fontColor);
    }
    model.qShowAll = input['qShowAll'];
    model.qOtherLabel = input['qOtherLabel'];
    model.qTotalLabel = input['qTotalLabel'];
    model.key = input['key'];
    return model;
  }
}

/// A [ModelEncoder] for [IvDimension].
class IvDimensionEncoder extends Converter<IvDimension, Map>
    implements ModelEncoder<IvDimension> {
  final Converter<IvMeasure, Map> _ivMeasureEncoder;
  final Converter<NxOtherTotalSpecProp, Map> _nxOtherTotalSpecPropEncoder;
  final Converter<IvAttrExpression, Map> _ivAttrExpressionEncoder;
  IvDimensionEncoder()
      : _ivMeasureEncoder = new IvMeasureEncoder(),
        _nxOtherTotalSpecPropEncoder = new NxOtherTotalSpecPropEncoder(),
        _ivAttrExpressionEncoder = new IvAttrExpressionEncoder();
  IvDimensionEncoder.using(this._ivMeasureEncoder,
      this._nxOtherTotalSpecPropEncoder, this._ivAttrExpressionEncoder);
  @override
  Map convert(IvDimension input) {
    var model = {};

    var isStatic = input.isStatic;
    if (isStatic != null) {
      model['isStatic'] = isStatic;
    }
    var dynamicHyerarchy = input.dynamicHyerarchy;
    if (dynamicHyerarchy != null) {
      model['dynamicHyerarchy'] = dynamicHyerarchy;
    }
    var measureSelector = input.measureSelector;
    if (measureSelector != null) {
      model['measureSelector'] = measureSelector;
    }
    var contitional = input.contitional;
    if (contitional != null) {
      model['contitional'] = contitional;
    }
    var width = input.width;
    if (width != null) {
      model['width'] = width;
    }
    var sortByNumeric = input.sortByNumeric;
    if (sortByNumeric != null) {
      model['sortByNumeric'] = sortByNumeric;
    }
    var sortByAscii = input.sortByAscii;
    if (sortByAscii != null) {
      model['sortByAscii'] = sortByAscii;
    }
    var sortByLoadOrder = input.sortByLoadOrder;
    if (sortByLoadOrder != null) {
      model['sortByLoadOrder'] = sortByLoadOrder;
    }
    var sortByExpression = input.sortByExpression;
    if (sortByExpression != null) {
      model['sortByExpression'] = _ivMeasureEncoder.convert(sortByExpression);
    }
    var visible = input.visible;
    if (visible != null) {
      model['visible'] = visible;
    }
    var qOtherTotalSpec = input.qOtherTotalSpec;
    if (qOtherTotalSpec != null) {
      model['qOtherTotalSpec'] =
          _nxOtherTotalSpecPropEncoder.convert(qOtherTotalSpec);
    }
    var backgroundColor = input.backgroundColor;
    if (backgroundColor != null) {
      model['backgroundColor'] =
          _ivAttrExpressionEncoder.convert(backgroundColor);
    }
    var fontColor = input.fontColor;
    if (fontColor != null) {
      model['fontColor'] = _ivAttrExpressionEncoder.convert(fontColor);
    }
    var qShowAll = input.qShowAll;
    if (qShowAll != null) {
      model['qShowAll'] = qShowAll;
    }
    var qOtherLabel = input.qOtherLabel;
    if (qOtherLabel != null) {
      model['qOtherLabel'] = qOtherLabel;
    }
    var qTotalLabel = input.qTotalLabel;
    if (qTotalLabel != null) {
      model['qTotalLabel'] = qTotalLabel;
    }
    model['key'] = input.key;

    return model;
  }
}
