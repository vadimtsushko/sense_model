// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-24 14:53:01.774400

library sense_model.src.convert.nx_ref_line_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_ref_line_expr_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxRefLine].
class NxRefLineDecoder extends Converter<Map, NxRefLine>
    implements ModelDecoder<NxRefLine> {
  final Converter<Map, NxRefLineExpr> _nxRefLineExprDecoder;
  NxRefLineDecoder() : _nxRefLineExprDecoder = new NxRefLineExprDecoder();
  NxRefLineDecoder.using(this._nxRefLineExprDecoder);
  @override
  NxRefLine create() => new NxRefLine();
  @override
  NxRefLine convert(Map input, [NxRefLine model]) {
    model ??= create();

    model.show = input['show'];
    model.color = input['color'];
    model.label = input['label'];
    model.refLineExpr = _nxRefLineExprDecoder.convert(input['refLineExpr']);

    return model;
  }
}

/// A [ModelEncoder] for [NxRefLine].
class NxRefLineEncoder extends Converter<NxRefLine, Map>
    implements ModelEncoder<NxRefLine> {
  final Converter<NxRefLineExpr, Map> _nxRefLineExprEncoder;
  NxRefLineEncoder() : _nxRefLineExprEncoder = new NxRefLineExprEncoder();
  NxRefLineEncoder.using(this._nxRefLineExprEncoder);
  @override
  Map convert(NxRefLine input) {
    var model = {};

    var show = input.show;
    if (show != null) {
      model['show'] = show;
    }
    var color = input.color;
    if (color != null) {
      model['color'] = color;
    }
    var label = input.label;
    if (label != null) {
      model['label'] = label;
    }
    model['refLineExpr'] = _nxRefLineExprEncoder.convert(input.refLineExpr);

    return model;
  }
}
