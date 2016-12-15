// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.q_columns_container_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_dimension_convert.dart';
import 'nx_measure_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [QColumnsContainer].
class QColumnsContainerDecoder extends Converter<Map, QColumnsContainer>
    implements ModelDecoder<QColumnsContainer> {
  final Converter<Map, NxDimension> _nxDimensionDecoder;
  final Converter<Map, NxMeasure> _nxMeasureDecoder;
  QColumnsContainerDecoder()
      : _nxDimensionDecoder = new NxDimensionDecoder(),
        _nxMeasureDecoder = new NxMeasureDecoder();
  QColumnsContainerDecoder.using(
      this._nxDimensionDecoder, this._nxMeasureDecoder);
  @override
  QColumnsContainer create() => new QColumnsContainer();
  @override
  QColumnsContainer convert(Map input, [QColumnsContainer model]) {
    model ??= create();

    var qDimensionsTemp0 = <NxDimension>[];
    for (var qDimensionsValue0 in input['qDimensions']) {
      qDimensionsTemp0.add(_nxDimensionDecoder.convert(qDimensionsValue0));
    }
    model.qDimensions = qDimensionsTemp0;
    var qMeasuresTemp0 = <NxMeasure>[];
    for (var qMeasuresValue0 in input['qMeasures']) {
      qMeasuresTemp0.add(_nxMeasureDecoder.convert(qMeasuresValue0));
    }
    model.qMeasures = qMeasuresTemp0;

    return model;
  }
}

/// A [ModelEncoder] for [QColumnsContainer].
class QColumnsContainerEncoder extends Converter<QColumnsContainer, Map>
    implements ModelEncoder<QColumnsContainer> {
  final Converter<NxDimension, Map> _nxDimensionEncoder;
  final Converter<NxMeasure, Map> _nxMeasureEncoder;
  QColumnsContainerEncoder()
      : _nxDimensionEncoder = new NxDimensionEncoder(),
        _nxMeasureEncoder = new NxMeasureEncoder();
  QColumnsContainerEncoder.using(
      this._nxDimensionEncoder, this._nxMeasureEncoder);
  @override
  Map convert(QColumnsContainer input) {
    var model = {};

    var qDimensionsTemp0 = [];
    for (var qDimensionsValue0 in input.qDimensions) {
      qDimensionsTemp0.add(_nxDimensionEncoder.convert(qDimensionsValue0));
    }
    model['qDimensions'] = qDimensionsTemp0;
    var qMeasuresTemp0 = [];
    for (var qMeasuresValue0 in input.qMeasures) {
      qMeasuresTemp0.add(_nxMeasureEncoder.convert(qMeasuresValue0));
    }
    model['qMeasures'] = qMeasuresTemp0;

    return model;
  }
}
