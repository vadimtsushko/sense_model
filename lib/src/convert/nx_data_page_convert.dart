// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.convert.nx_data_page_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxDataPage].
class NxDataPageDecoder extends Converter<Map, NxDataPage>
    implements ModelDecoder<NxDataPage> {
  @override
  NxDataPage create() => new NxDataPage();
  @override
  NxDataPage convert(Map input, [NxDataPage model]) {
    model ??= create();

    model.qMatrix = input['qMatrix'];
    model.qNum = input['qNum'];
    model.qElemNumber = input['qElemNumber'];
    model.qState = input['qState'];
    model.qIsEmpty = input['qIsEmpty'];
    model.qIsTotalCell = input['qIsTotalCell'];
    model.qIsOtherCell = input['qIsOtherCell'];
    model.qFrequency = input['qFrequency'];
    model.qNoOfLeftDims = input['qNoOfLeftDims'];
    model.qIsNull = input['qIsNull'];
    return model;
  }
}

/// A [ModelEncoder] for [NxDataPage].
class NxDataPageEncoder extends Converter<NxDataPage, Map>
    implements ModelEncoder<NxDataPage> {
  @override
  Map convert(NxDataPage input) {
    var model = {};

    var qMatrix = input.qMatrix;
    if (qMatrix != null) {
      model['qMatrix'] = qMatrix;
    }
    var qNum = input.qNum;
    if (qNum != null) {
      model['qNum'] = qNum;
    }
    var qElemNumber = input.qElemNumber;
    if (qElemNumber != null) {
      model['qElemNumber'] = qElemNumber;
    }
    var qState = input.qState;
    if (qState != null) {
      model['qState'] = qState;
    }
    var qIsEmpty = input.qIsEmpty;
    if (qIsEmpty != null) {
      model['qIsEmpty'] = qIsEmpty;
    }
    var qIsTotalCell = input.qIsTotalCell;
    if (qIsTotalCell != null) {
      model['qIsTotalCell'] = qIsTotalCell;
    }
    var qIsOtherCell = input.qIsOtherCell;
    if (qIsOtherCell != null) {
      model['qIsOtherCell'] = qIsOtherCell;
    }
    var qFrequency = input.qFrequency;
    if (qFrequency != null) {
      model['qFrequency'] = qFrequency;
    }
    var qNoOfLeftDims = input.qNoOfLeftDims;
    if (qNoOfLeftDims != null) {
      model['qNoOfLeftDims'] = qNoOfLeftDims;
    }
    var qIsNull = input.qIsNull;
    if (qIsNull != null) {
      model['qIsNull'] = qIsNull;
    }

    return model;
  }
}
