// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_dimension_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_inline_dimension_def_convert.dart';
import 'nx_value_expr_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxDimension].
class NxDimensionDecoder extends Converter<Map, NxDimension>
    implements ModelDecoder<NxDimension> {
  final Converter<Map, NxInlineDimensionDef> _nxInlineDimensionDefDecoder;
  final Converter<Map, NxValueExpr> _nxValueExprDecoder;
  NxDimensionDecoder()
      : _nxInlineDimensionDefDecoder = new NxInlineDimensionDefDecoder(),
        _nxValueExprDecoder = new NxValueExprDecoder();
  NxDimensionDecoder.using(
      this._nxInlineDimensionDefDecoder, this._nxValueExprDecoder);
  @override
  NxDimension create() => new NxDimension();
  @override
  NxDimension convert(Map input, [NxDimension model]) {
    model ??= create();

    model.type = input['type'];
    model.qLibraryId = input['qLibraryId'];
    model.qDef = _nxInlineDimensionDefDecoder.convert(input['qDef']);
    model.qNullSuppression = input['qNullSuppression'];
    model.qShowAll = input['qShowAll'];
    model.qOtherLabel = input['qOtherLabel'];
    model.qTotalLabel = input['qTotalLabel'];
    model.qOtherTotalSpec = input['qOtherTotalSpec'];
    model.qCalcCond = _nxValueExprDecoder.convert(input['qCalcCond']);

    return model;
  }
}

/// A [ModelEncoder] for [NxDimension].
class NxDimensionEncoder extends Converter<NxDimension, Map>
    implements ModelEncoder<NxDimension> {
  final Converter<NxInlineDimensionDef, Map> _nxInlineDimensionDefEncoder;
  final Converter<NxValueExpr, Map> _nxValueExprEncoder;
  NxDimensionEncoder()
      : _nxInlineDimensionDefEncoder = new NxInlineDimensionDefEncoder(),
        _nxValueExprEncoder = new NxValueExprEncoder();
  NxDimensionEncoder.using(
      this._nxInlineDimensionDefEncoder, this._nxValueExprEncoder);
  @override
  Map convert(NxDimension input) {
    var model = {};

    model['type'] = input.type;
    model['qLibraryId'] = input.qLibraryId;
    model['qDef'] = _nxInlineDimensionDefEncoder.convert(input.qDef);
    model['qNullSuppression'] = input.qNullSuppression;
    model['qShowAll'] = input.qShowAll;
    model['qOtherLabel'] = input.qOtherLabel;
    model['qTotalLabel'] = input.qTotalLabel;
    model['qOtherTotalSpec'] = input.qOtherTotalSpec;
    model['qCalcCond'] = _nxValueExprEncoder.convert(input.qCalcCond);

    return model;
  }
}
