// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-19 12:36:50.431303

library sense_model.src.convert.nx_sort_criteria_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_value_expr_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxSortCriteria].
class NxSortCriteriaDecoder extends Converter<Map, NxSortCriteria>
    implements ModelDecoder<NxSortCriteria> {
  final Converter<Map, NxValueExpr> _nxValueExprDecoder;
  NxSortCriteriaDecoder() : _nxValueExprDecoder = new NxValueExprDecoder();
  NxSortCriteriaDecoder.using(this._nxValueExprDecoder);
  @override
  NxSortCriteria create() => new NxSortCriteria();
  @override
  NxSortCriteria convert(Map input, [NxSortCriteria model]) {
    model ??= create();

    model.qSortByExpression = input['qSortByExpression'];
    var qExpression = input['qExpression'];
    if (qExpression != null) {
      model.qExpression = _nxValueExprDecoder.convert(qExpression);
    }
    model.qSortByState = input['qSortByState'];
    model.qSortByFrequency = input['qSortByFrequency'];
    model.qSortByNumeric = input['qSortByNumeric'];
    model.qSortByAscii = input['qSortByAscii'];
    model.qSortByLoadOrder = input['qSortByLoadOrder'];
    return model;
  }
}

/// A [ModelEncoder] for [NxSortCriteria].
class NxSortCriteriaEncoder extends Converter<NxSortCriteria, Map>
    implements ModelEncoder<NxSortCriteria> {
  final Converter<NxValueExpr, Map> _nxValueExprEncoder;
  NxSortCriteriaEncoder() : _nxValueExprEncoder = new NxValueExprEncoder();
  NxSortCriteriaEncoder.using(this._nxValueExprEncoder);
  @override
  Map convert(NxSortCriteria input) {
    var model = {};

    var qSortByExpression = input.qSortByExpression;
    if (qSortByExpression != null) {
      model['qSortByExpression'] = qSortByExpression;
    }
    var qExpression = input.qExpression;
    if (qExpression != null) {
      model['qExpression'] = _nxValueExprEncoder.convert(qExpression);
    }
    var qSortByState = input.qSortByState;
    if (qSortByState != null) {
      model['qSortByState'] = qSortByState;
    }
    var qSortByFrequency = input.qSortByFrequency;
    if (qSortByFrequency != null) {
      model['qSortByFrequency'] = qSortByFrequency;
    }
    model['qSortByNumeric'] = input.qSortByNumeric;
    var qSortByAscii = input.qSortByAscii;
    if (qSortByAscii != null) {
      model['qSortByAscii'] = qSortByAscii;
    }
    var qSortByLoadOrder = input.qSortByLoadOrder;
    if (qSortByLoadOrder != null) {
      model['qSortByLoadOrder'] = qSortByLoadOrder;
    }

    return model;
  }
}
