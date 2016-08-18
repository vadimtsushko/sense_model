// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.convert.nx_page_convert;

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

/// A [ModelDecoder] for [NxPage].
class NxPageDecoder extends Converter<Map, NxPage>
    implements ModelDecoder<NxPage> {
  @override
  NxPage create() => new NxPage();
  @override
  NxPage convert(Map input, [NxPage model]) {
    model ??= create();

    model.qLeft = input['qLeft'];
    model.qTop = input['qTop'];
    model.qWidth = input['qWidth'];
    model.qHeight = input['qHeight'];
    return model;
  }
}

/// A [ModelEncoder] for [NxPage].
class NxPageEncoder extends Converter<NxPage, Map>
    implements ModelEncoder<NxPage> {
  @override
  Map convert(NxPage input) {
    var model = {};

    var qLeft = input.qLeft;
    if (qLeft != null) {
      model['qLeft'] = qLeft;
    }
    var qTop = input.qTop;
    if (qTop != null) {
      model['qTop'] = qTop;
    }
    model['qWidth'] = input.qWidth;
    model['qHeight'] = input.qHeight;

    return model;
  }
}
