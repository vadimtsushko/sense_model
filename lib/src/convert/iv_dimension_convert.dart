// Generated by Dogma Dart. DO NOT MODIFY!

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
import 'iv_measure_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [IvDimension].
class IvDimensionDecoder extends Converter<Map, IvDimension>
    implements ModelDecoder<IvDimension> {
  final Converter<Map, IvMeasure> _ivMeasureDecoder;
  IvDimensionDecoder() : _ivMeasureDecoder = new IvMeasureDecoder();
  IvDimensionDecoder.using(this._ivMeasureDecoder);
  @override
  IvDimension create() => new IvDimension();
  @override
  IvDimension convert(Map input, [IvDimension model]) {
    model ??= create();

    model.isStatic = input['isStatic'];
    model.dynamicHyerarchy = input['dynamicHyerarchy'];
    model.contitional = input['contitional'];
    var sortByExpression = input['sortByExpression'];
    if (sortByExpression != null) {
      model.sortByExpression = _ivMeasureDecoder.convert(sortByExpression);
    }
    model.visible = input['visible'];
    model.key = input['key'];
    return model;
  }
}

/// A [ModelEncoder] for [IvDimension].
class IvDimensionEncoder extends Converter<IvDimension, Map>
    implements ModelEncoder<IvDimension> {
  final Converter<IvMeasure, Map> _ivMeasureEncoder;
  IvDimensionEncoder() : _ivMeasureEncoder = new IvMeasureEncoder();
  IvDimensionEncoder.using(this._ivMeasureEncoder);
  @override
  Map convert(IvDimension input) {
    var model = {};

    model['isStatic'] = input.isStatic;
    var dynamicHyerarchy = input.dynamicHyerarchy;
    if (dynamicHyerarchy != null) {
      model['dynamicHyerarchy'] = dynamicHyerarchy;
    }
    var contitional = input.contitional;
    if (contitional != null) {
      model['contitional'] = contitional;
    }
    var sortByExpression = input.sortByExpression;
    if (sortByExpression != null) {
      model['sortByExpression'] = _ivMeasureEncoder.convert(sortByExpression);
    }
    var visible = input.visible;
    if (visible != null) {
      model['visible'] = visible;
    }
    model['key'] = input.key;

    return model;
  }
}
