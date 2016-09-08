// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-07 13:16:59.317938

library sense_model.src.convert.app_config_convert;

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

/// A [ModelDecoder] for [AppConfig].
class AppConfigDecoder extends Converter<Map, AppConfig>
    implements ModelDecoder<AppConfig> {
  @override
  AppConfig create() => new AppConfig();
  @override
  AppConfig convert(Map input, [AppConfig model]) {
    model ??= create();

    model.host = input['host'];
    model.id = input['id'];
    model.name = input['name'];
    model.useCurrentDate = input['useCurrentDate'];
    model.currentYear = input['currentYear'];
    model.currentMonth = input['currentMonth'];
    return model;
  }
}

/// A [ModelEncoder] for [AppConfig].
class AppConfigEncoder extends Converter<AppConfig, Map>
    implements ModelEncoder<AppConfig> {
  @override
  Map convert(AppConfig input) {
    var model = {};

    model['host'] = input.host;
    model['id'] = input.id;
    model['name'] = input.name;
    var useCurrentDate = input.useCurrentDate;
    if (useCurrentDate != null) {
      model['useCurrentDate'] = useCurrentDate;
    }
    var currentYear = input.currentYear;
    if (currentYear != null) {
      model['currentYear'] = currentYear;
    }
    var currentMonth = input.currentMonth;
    if (currentMonth != null) {
      model['currentMonth'] = currentMonth;
    }

    return model;
  }
}
