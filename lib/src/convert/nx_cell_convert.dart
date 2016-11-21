// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-15 11:30:01.492953

library sense_model.src.convert.nx_cell_convert;

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

/// A [ModelDecoder] for [NxCell].
class NxCellDecoder extends Converter<Map, NxCell>
    implements ModelDecoder<NxCell> {
  @override
  NxCell create() => new NxCell();
  @override
  NxCell convert(Map input, [NxCell model]) {
    model ??= create();

    model.qText = input['qText'];
    model.qNum = input['qNum'];
    model.qElemNumber = input['qElemNumber'];
    model.qState = input['qState'];
    model.qIsEmpty = input['qIsEmpty'];
    model.qIsTotalCell = input['qIsTotalCell'];
    model.qIsOtherCell = input['qIsOtherCell'];
    model.qFrequency = input['qFrequency'];
    model.qIsNull = input['qIsNull'];
    return model;
  }
}

/// A [ModelEncoder] for [NxCell].
class NxCellEncoder extends Converter<NxCell, Map>
    implements ModelEncoder<NxCell> {
  @override
  Map convert(NxCell input) {
    var model = {};

    model['qText'] = input.qText;
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
    var qIsNull = input.qIsNull;
    if (qIsNull != null) {
      model['qIsNull'] = qIsNull;
    }

    return model;
  }
}
