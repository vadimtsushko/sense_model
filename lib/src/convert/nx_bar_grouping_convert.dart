// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-15 11:30:01.492953

library sense_model.src.convert.nx_bar_grouping_convert;

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

/// A [ModelDecoder] for [NxBarGrouping].
class NxBarGroupingDecoder extends Converter<Map, NxBarGrouping>
    implements ModelDecoder<NxBarGrouping> {
  @override
  NxBarGrouping create() => new NxBarGrouping();
  @override
  NxBarGrouping convert(Map input, [NxBarGrouping model]) {
    model ??= create();

    model.grouping = input['grouping'];
    return model;
  }
}

/// A [ModelEncoder] for [NxBarGrouping].
class NxBarGroupingEncoder extends Converter<NxBarGrouping, Map>
    implements ModelEncoder<NxBarGrouping> {
  @override
  Map convert(NxBarGrouping input) {
    var model = {};

    model['grouping'] = input.grouping;

    return model;
  }
}
