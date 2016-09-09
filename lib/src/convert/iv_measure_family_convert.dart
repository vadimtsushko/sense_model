// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.iv_measure_family_convert;

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

/// A [ModelDecoder] for [IvMeasureFamily].
class IvMeasureFamilyDecoder extends Converter<Map, IvMeasureFamily>
    implements ModelDecoder<IvMeasureFamily> {
  @override
  IvMeasureFamily create() => new IvMeasureFamily();
  @override
  IvMeasureFamily convert(Map input, [IvMeasureFamily model]) {
    model ??= create();

    model.key = input['key'];
    model.displayName = input['displayName'];
    model.hasPlan = input['hasPlan'];
    model.inverted = input['inverted'];
    model.percentValue = input['percentValue'];
    model.currency = input['currency'];
    model.defaultMultiplier = input['defaultMultiplier'];
    model.monthly = input['monthly'];
    return model;
  }
}

/// A [ModelEncoder] for [IvMeasureFamily].
class IvMeasureFamilyEncoder extends Converter<IvMeasureFamily, Map>
    implements ModelEncoder<IvMeasureFamily> {
  @override
  Map convert(IvMeasureFamily input) {
    var model = {};

    model['key'] = input.key;
    model['displayName'] = input.displayName;
    var hasPlan = input.hasPlan;
    if (hasPlan != null) {
      model['hasPlan'] = hasPlan;
    }
    var inverted = input.inverted;
    if (inverted != null) {
      model['inverted'] = inverted;
    }
    var percentValue = input.percentValue;
    if (percentValue != null) {
      model['percentValue'] = percentValue;
    }
    var currency = input.currency;
    if (currency != null) {
      model['currency'] = currency;
    }
    var defaultMultiplier = input.defaultMultiplier;
    if (defaultMultiplier != null) {
      model['defaultMultiplier'] = defaultMultiplier;
    }
    var monthly = input.monthly;
    if (monthly != null) {
      model['monthly'] = monthly;
    }

    return model;
  }
}