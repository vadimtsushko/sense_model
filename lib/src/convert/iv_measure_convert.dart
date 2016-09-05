// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.convert.iv_measure_convert;

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
import 'iv_filter_param_convert.dart';
import 'nx_measure_series_convert.dart';
import 'nx_sort_criteria_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [IvMeasure].
class IvMeasureDecoder extends Converter<Map, IvMeasure>
    implements ModelDecoder<IvMeasure> {
  final Converter<Map, NxSortCriteria> _nxSortCriteriaDecoder;
  final Converter<Map, IvAttrExpression> _ivAttrExpressionDecoder;
  final Converter<Map, NxMeasureSeries> _nxMeasureSeriesDecoder;
  final Converter<Map, IvFilterParam> _ivFilterParamDecoder;
  IvMeasureDecoder()
      : _nxSortCriteriaDecoder = new NxSortCriteriaDecoder(),
        _ivAttrExpressionDecoder = new IvAttrExpressionDecoder(),
        _nxMeasureSeriesDecoder = new NxMeasureSeriesDecoder(),
        _ivFilterParamDecoder = new IvFilterParamDecoder();
  IvMeasureDecoder.using(
      this._nxSortCriteriaDecoder,
      this._ivAttrExpressionDecoder,
      this._nxMeasureSeriesDecoder,
      this._ivFilterParamDecoder);
  @override
  IvMeasure create() => new IvMeasure();
  @override
  IvMeasure convert(Map input, [IvMeasure model]) {
    model ??= create();

    model.key = input['key'];
    model.param1 = input['param1'];
    model.params = input['params'];
    model.keySelector = input['keySelector'];
    model.type = input['type'];
    model.typeSelector = input['typeSelector'];
    model.family = input['family'];
    model.familySelector = input['familySelector'];
    model.conditional = input['conditional'];
    var qSortBy = input['qSortBy'];
    if (qSortBy != null) {
      model.qSortBy = _nxSortCriteriaDecoder.convert(qSortBy);
    }
    model.width = input['width'];
    model.qRelative = input['qRelative'];
    model.qAccumulate = input['qAccumulate'];
    model.qBrutalSum = input['qBrutalSum'];
    model.qAggrFunc = input['qAggrFunc'];
    var backgroundColor = input['backgroundColor'];
    if (backgroundColor != null) {
      model.backgroundColor = _ivAttrExpressionDecoder.convert(backgroundColor);
    }
    var fontColor = input['fontColor'];
    if (fontColor != null) {
      model.fontColor = _ivAttrExpressionDecoder.convert(fontColor);
    }
    model.visible = input['visible'];
    var series = input['series'];
    if (series != null) {
      model.series = _nxMeasureSeriesDecoder.convert(series);
    }
    model.sortOrder = input['sortOrder'];
    var filters = input['filters'];
    if (filters != null) {
      var filtersTemp0 = <IvFilterParam>[];
      for (var filtersValue0 in filters) {
        filtersTemp0.add(_ivFilterParamDecoder.convert(filtersValue0));
      }
      model.filters = filtersTemp0;
    }

    return model;
  }
}

/// A [ModelEncoder] for [IvMeasure].
class IvMeasureEncoder extends Converter<IvMeasure, Map>
    implements ModelEncoder<IvMeasure> {
  final Converter<NxSortCriteria, Map> _nxSortCriteriaEncoder;
  final Converter<IvAttrExpression, Map> _ivAttrExpressionEncoder;
  final Converter<NxMeasureSeries, Map> _nxMeasureSeriesEncoder;
  final Converter<IvFilterParam, Map> _ivFilterParamEncoder;
  IvMeasureEncoder()
      : _nxSortCriteriaEncoder = new NxSortCriteriaEncoder(),
        _ivAttrExpressionEncoder = new IvAttrExpressionEncoder(),
        _nxMeasureSeriesEncoder = new NxMeasureSeriesEncoder(),
        _ivFilterParamEncoder = new IvFilterParamEncoder();
  IvMeasureEncoder.using(
      this._nxSortCriteriaEncoder,
      this._ivAttrExpressionEncoder,
      this._nxMeasureSeriesEncoder,
      this._ivFilterParamEncoder);
  @override
  Map convert(IvMeasure input) {
    var model = {};

    model['key'] = input.key;
    var param1 = input.param1;
    if (param1 != null) {
      model['param1'] = param1;
    }
    var params = input.params;
    if (params != null) {
      model['params'] = params;
    }
    var keySelector = input.keySelector;
    if (keySelector != null) {
      model['keySelector'] = keySelector;
    }
    var type = input.type;
    if (type != null) {
      model['type'] = type;
    }
    var typeSelector = input.typeSelector;
    if (typeSelector != null) {
      model['typeSelector'] = typeSelector;
    }
    var family = input.family;
    if (family != null) {
      model['family'] = family;
    }
    var familySelector = input.familySelector;
    if (familySelector != null) {
      model['familySelector'] = familySelector;
    }
    var conditional = input.conditional;
    if (conditional != null) {
      model['conditional'] = conditional;
    }
    var qSortBy = input.qSortBy;
    if (qSortBy != null) {
      model['qSortBy'] = _nxSortCriteriaEncoder.convert(qSortBy);
    }
    var width = input.width;
    if (width != null) {
      model['width'] = width;
    }
    var qRelative = input.qRelative;
    if (qRelative != null) {
      model['qRelative'] = qRelative;
    }
    var qAccumulate = input.qAccumulate;
    if (qAccumulate != null) {
      model['qAccumulate'] = qAccumulate;
    }
    var qBrutalSum = input.qBrutalSum;
    if (qBrutalSum != null) {
      model['qBrutalSum'] = qBrutalSum;
    }
    var qAggrFunc = input.qAggrFunc;
    if (qAggrFunc != null) {
      model['qAggrFunc'] = qAggrFunc;
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
    var visible = input.visible;
    if (visible != null) {
      model['visible'] = visible;
    }
    var series = input.series;
    if (series != null) {
      model['series'] = _nxMeasureSeriesEncoder.convert(series);
    }
    var sortOrder = input.sortOrder;
    if (sortOrder != null) {
      model['sortOrder'] = sortOrder;
    }
    var filters = input.filters;
    if (filters != null) {
      var filtersTemp0 = [];
      for (var filtersValue0 in filters) {
        filtersTemp0.add(_ivFilterParamEncoder.convert(filtersValue0));
      }
      model['filters'] = filtersTemp0;
    }

    return model;
  }
}
