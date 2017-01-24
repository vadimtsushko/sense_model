// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-24 14:53:01.774400

library sense_model.src.convert.app_config_item_convert;

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

/// A [ModelDecoder] for [AppConfigItem].
class AppConfigItemDecoder extends Converter<Map, AppConfigItem>
    implements ModelDecoder<AppConfigItem> {
  @override
  AppConfigItem create() => new AppConfigItem();
  @override
  AppConfigItem convert(Map input, [AppConfigItem model]) {
    model ??= create();

    model.docName = input['docName'];
    model.host = input['host'];
    model.port = input['port'];
    return model;
  }
}

/// A [ModelEncoder] for [AppConfigItem].
class AppConfigItemEncoder extends Converter<AppConfigItem, Map>
    implements ModelEncoder<AppConfigItem> {
  @override
  Map convert(AppConfigItem input) {
    var model = {};

    model['docName'] = input.docName;
    model['host'] = input.host;
    var port = input.port;
    if (port != null) {
      model['port'] = port;
    }

    return model;
  }
}
