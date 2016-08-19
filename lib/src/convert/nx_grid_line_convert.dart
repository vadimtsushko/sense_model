// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-19 12:36:50.431303

library sense_model.src.convert.nx_grid_line_convert;

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

/// A [ModelDecoder] for [NxGridLine].
class NxGridLineDecoder extends Converter<Map, NxGridLine>
    implements ModelDecoder<NxGridLine> {
  @override
  NxGridLine create() => new NxGridLine();
  @override
  NxGridLine convert(Map input, [NxGridLine model]) {
    model ??= create();

    model.auto = input['auto'];
    model.spacing = input['spacing'];
    return model;
  }
}

/// A [ModelEncoder] for [NxGridLine].
class NxGridLineEncoder extends Converter<NxGridLine, Map>
    implements ModelEncoder<NxGridLine> {
  @override
  Map convert(NxGridLine input) {
    var model = {};

    model['auto'] = input.auto;
    var spacing = input.spacing;
    if (spacing != null) {
      model['spacing'] = spacing;
    }

    return model;
  }
}
