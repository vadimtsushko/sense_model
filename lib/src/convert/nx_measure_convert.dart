// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-02 10:38:39.164902

library sense_model.src.convert.nx_measure_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_attr_expr_def_convert.dart';
import 'nx_inline_measure_def_convert.dart';
import 'nx_sort_criteria_convert.dart';
import 'nx_value_expr_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxMeasure].
class NxMeasureDecoder extends Converter<Map, NxMeasure>
    implements ModelDecoder<NxMeasure> {
  final Converter<Map, NxInlineMeasureDef> _nxInlineMeasureDefDecoder;
  final Converter<Map, NxSortCriteria> _nxSortCriteriaDecoder;
  final Converter<Map, NxAttrExprDef> _nxAttrExprDefDecoder;
  final Converter<Map, NxValueExpr> _nxValueExprDecoder;
  NxMeasureDecoder()
      : _nxInlineMeasureDefDecoder = new NxInlineMeasureDefDecoder(),
        _nxSortCriteriaDecoder = new NxSortCriteriaDecoder(),
        _nxAttrExprDefDecoder = new NxAttrExprDefDecoder(),
        _nxValueExprDecoder = new NxValueExprDecoder();
  NxMeasureDecoder.using(
      this._nxInlineMeasureDefDecoder,
      this._nxSortCriteriaDecoder,
      this._nxAttrExprDefDecoder,
      this._nxValueExprDecoder);
  @override
  NxMeasure create() => new NxMeasure();
  @override
  NxMeasure convert(Map input, [NxMeasure model]) {
    model ??= create();

    model.type = input['type'];
    model.qLibraryId = input['qLibraryId'];
    model.qDef = _nxInlineMeasureDefDecoder.convert(input['qDef']);
    model.autoSort = input['autoSort'];
    var qSortBy = input['qSortBy'];
    if (qSortBy != null) {
      model.qSortBy = _nxSortCriteriaDecoder.convert(qSortBy);
    }
    var qAttributeExpressions = input['qAttributeExpressions'];
    if (qAttributeExpressions != null) {
      var qAttributeExpressionsTemp0 = <NxAttrExprDef>[];
      for (var qAttributeExpressionsValue0 in qAttributeExpressions) {
        qAttributeExpressionsTemp0
            .add(_nxAttrExprDefDecoder.convert(qAttributeExpressionsValue0));
      }
      model.qAttributeExpressions = qAttributeExpressionsTemp0;
    }
    var qCalcCond = input['qCalcCond'];
    if (qCalcCond != null) {
      model.qCalcCond = _nxValueExprDecoder.convert(qCalcCond);
    }

    return model;
  }
}

/// A [ModelEncoder] for [NxMeasure].
class NxMeasureEncoder extends Converter<NxMeasure, Map>
    implements ModelEncoder<NxMeasure> {
  final Converter<NxInlineMeasureDef, Map> _nxInlineMeasureDefEncoder;
  final Converter<NxSortCriteria, Map> _nxSortCriteriaEncoder;
  final Converter<NxAttrExprDef, Map> _nxAttrExprDefEncoder;
  final Converter<NxValueExpr, Map> _nxValueExprEncoder;
  NxMeasureEncoder()
      : _nxInlineMeasureDefEncoder = new NxInlineMeasureDefEncoder(),
        _nxSortCriteriaEncoder = new NxSortCriteriaEncoder(),
        _nxAttrExprDefEncoder = new NxAttrExprDefEncoder(),
        _nxValueExprEncoder = new NxValueExprEncoder();
  NxMeasureEncoder.using(
      this._nxInlineMeasureDefEncoder,
      this._nxSortCriteriaEncoder,
      this._nxAttrExprDefEncoder,
      this._nxValueExprEncoder);
  @override
  Map convert(NxMeasure input) {
    var model = {};

    var type = input.type;
    if (type != null) {
      model['type'] = type;
    }
    var qLibraryId = input.qLibraryId;
    if (qLibraryId != null) {
      model['qLibraryId'] = qLibraryId;
    }
    model['qDef'] = _nxInlineMeasureDefEncoder.convert(input.qDef);
    var autoSort = input.autoSort;
    if (autoSort != null) {
      model['autoSort'] = autoSort;
    }
    var qSortBy = input.qSortBy;
    if (qSortBy != null) {
      model['qSortBy'] = _nxSortCriteriaEncoder.convert(qSortBy);
    }
    var qAttributeExpressions = input.qAttributeExpressions;
    if (qAttributeExpressions != null) {
      var qAttributeExpressionsTemp0 = [];
      for (var qAttributeExpressionsValue0 in qAttributeExpressions) {
        qAttributeExpressionsTemp0
            .add(_nxAttrExprDefEncoder.convert(qAttributeExpressionsValue0));
      }
      model['qAttributeExpressions'] = qAttributeExpressionsTemp0;
    }
    var qCalcCond = input.qCalcCond;
    if (qCalcCond != null) {
      model['qCalcCond'] = _nxValueExprEncoder.convert(qCalcCond);
    }

    return model;
  }
}
