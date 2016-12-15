// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.locale_display_name_convert;

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

/// A [ModelDecoder] for [LocaleDisplayName].
class LocaleDisplayNameDecoder extends Converter<Map, LocaleDisplayName>
    implements ModelDecoder<LocaleDisplayName> {
  @override
  LocaleDisplayName create() => new LocaleDisplayName();
  @override
  LocaleDisplayName convert(Map input, [LocaleDisplayName model]) {
    model ??= create();

    model.en = input['en'];
    model.fr = input['fr'];
    model.de = input['de'];
    return model;
  }
}

/// A [ModelEncoder] for [LocaleDisplayName].
class LocaleDisplayNameEncoder extends Converter<LocaleDisplayName, Map>
    implements ModelEncoder<LocaleDisplayName> {
  @override
  Map convert(LocaleDisplayName input) {
    var model = {};

    model['en'] = input.en;
    var fr = input.fr;
    if (fr != null) {
      model['fr'] = fr;
    }
    var de = input.de;
    if (de != null) {
      model['de'] = de;
    }

    return model;
  }
}
