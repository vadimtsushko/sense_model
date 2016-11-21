// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-15 11:30:01.492953

library sense_model.src.convert.nx_other_total_spec_prop_convert;

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

/// A [ModelDecoder] for [NxOtherTotalSpecProp].
class NxOtherTotalSpecPropDecoder extends Converter<Map, NxOtherTotalSpecProp>
    implements ModelDecoder<NxOtherTotalSpecProp> {
  final Converter<Map, NxValueExpr> _nxValueExprDecoder;
  NxOtherTotalSpecPropDecoder()
      : _nxValueExprDecoder = new NxValueExprDecoder();
  NxOtherTotalSpecPropDecoder.using(this._nxValueExprDecoder);
  @override
  NxOtherTotalSpecProp create() => new NxOtherTotalSpecProp();
  @override
  NxOtherTotalSpecProp convert(Map input, [NxOtherTotalSpecProp model]) {
    model ??= create();

    model.qTotalMode = input['qTotalMode'];
    model.qReferencedExpression = input['qReferencedExpression'];
    var qOtherCounted = input['qOtherCounted'];
    if (qOtherCounted != null) {
      model.qOtherCounted = _nxValueExprDecoder.convert(qOtherCounted);
    }
    var qOtherLimit = input['qOtherLimit'];
    if (qOtherLimit != null) {
      model.qOtherLimit = _nxValueExprDecoder.convert(qOtherLimit);
    }
    model.qOtherLimitMode = input['qOtherLimitMode'];
    model.qSuppressOther = input['qSuppressOther'];
    model.qForceBadValueKeeping = input['qForceBadValueKeeping'];
    model.qApplyEvenWhenPossiblyWrongResult =
        input['qApplyEvenWhenPossiblyWrongResult'];
    model.qOtherMode = input['qOtherMode'];
    return model;
  }
}

/// A [ModelEncoder] for [NxOtherTotalSpecProp].
class NxOtherTotalSpecPropEncoder extends Converter<NxOtherTotalSpecProp, Map>
    implements ModelEncoder<NxOtherTotalSpecProp> {
  final Converter<NxValueExpr, Map> _nxValueExprEncoder;
  NxOtherTotalSpecPropEncoder()
      : _nxValueExprEncoder = new NxValueExprEncoder();
  NxOtherTotalSpecPropEncoder.using(this._nxValueExprEncoder);
  @override
  Map convert(NxOtherTotalSpecProp input) {
    var model = {};

    model['qTotalMode'] = input.qTotalMode;
    var qReferencedExpression = input.qReferencedExpression;
    if (qReferencedExpression != null) {
      model['qReferencedExpression'] = qReferencedExpression;
    }
    var qOtherCounted = input.qOtherCounted;
    if (qOtherCounted != null) {
      model['qOtherCounted'] = _nxValueExprEncoder.convert(qOtherCounted);
    }
    var qOtherLimit = input.qOtherLimit;
    if (qOtherLimit != null) {
      model['qOtherLimit'] = _nxValueExprEncoder.convert(qOtherLimit);
    }
    var qOtherLimitMode = input.qOtherLimitMode;
    if (qOtherLimitMode != null) {
      model['qOtherLimitMode'] = qOtherLimitMode;
    }
    var qSuppressOther = input.qSuppressOther;
    if (qSuppressOther != null) {
      model['qSuppressOther'] = qSuppressOther;
    }
    var qForceBadValueKeeping = input.qForceBadValueKeeping;
    if (qForceBadValueKeeping != null) {
      model['qForceBadValueKeeping'] = qForceBadValueKeeping;
    }
    var qApplyEvenWhenPossiblyWrongResult =
        input.qApplyEvenWhenPossiblyWrongResult;
    if (qApplyEvenWhenPossiblyWrongResult != null) {
      model['qApplyEvenWhenPossiblyWrongResult'] =
          qApplyEvenWhenPossiblyWrongResult;
    }
    var qOtherMode = input.qOtherMode;
    if (qOtherMode != null) {
      model['qOtherMode'] = qOtherMode;
    }

    return model;
  }
}
