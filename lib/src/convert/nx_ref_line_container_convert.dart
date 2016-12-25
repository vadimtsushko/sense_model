// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 11:14:57.399257

library sense_model.src.convert.nx_ref_line_container_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_ref_line_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxRefLineContainer].
class NxRefLineContainerDecoder extends Converter<Map, NxRefLineContainer>
    implements ModelDecoder<NxRefLineContainer> {
  final Converter<Map, NxRefLine> _nxRefLineDecoder;
  NxRefLineContainerDecoder() : _nxRefLineDecoder = new NxRefLineDecoder();
  NxRefLineContainerDecoder.using(this._nxRefLineDecoder);
  @override
  NxRefLineContainer create() => new NxRefLineContainer();
  @override
  NxRefLineContainer convert(Map input, [NxRefLineContainer model]) {
    model ??= create();

    var refLinesTemp0 = <NxRefLine>[];
    for (var refLinesValue0 in input['refLines']) {
      refLinesTemp0.add(_nxRefLineDecoder.convert(refLinesValue0));
    }
    model.refLines = refLinesTemp0;

    return model;
  }
}

/// A [ModelEncoder] for [NxRefLineContainer].
class NxRefLineContainerEncoder extends Converter<NxRefLineContainer, Map>
    implements ModelEncoder<NxRefLineContainer> {
  final Converter<NxRefLine, Map> _nxRefLineEncoder;
  NxRefLineContainerEncoder() : _nxRefLineEncoder = new NxRefLineEncoder();
  NxRefLineContainerEncoder.using(this._nxRefLineEncoder);
  @override
  Map convert(NxRefLineContainer input) {
    var model = {};

    var refLinesTemp0 = [];
    for (var refLinesValue0 in input.refLines) {
      refLinesTemp0.add(_nxRefLineEncoder.convert(refLinesValue0));
    }
    model['refLines'] = refLinesTemp0;

    return model;
  }
}
