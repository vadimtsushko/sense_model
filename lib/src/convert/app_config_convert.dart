// Generated by Dogma Dart. DO NOT MODIFY!

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
import 'app_config_item_convert.dart';
import 'doc_list_entry_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [AppConfig].
class AppConfigDecoder extends Converter<Map, AppConfig>
    implements ModelDecoder<AppConfig> {
  final Converter<Map, AppConfigItem> _appConfigItemDecoder;
  final Converter<Map, DocListEntry> _docListEntryDecoder;
  AppConfigDecoder()
      : _appConfigItemDecoder = new AppConfigItemDecoder(),
        _docListEntryDecoder = new DocListEntryDecoder();
  AppConfigDecoder.using(this._appConfigItemDecoder, this._docListEntryDecoder);
  @override
  AppConfig create() => new AppConfig();
  @override
  AppConfig convert(Map input, [AppConfig model]) {
    model ??= create();

    model.host = input['host'];
    model.name = input['name'];
    model.lang = input['lang'];
    model.useCurrentDate = input['useCurrentDate'];
    model.currentYear = input['currentYear'];
    model.port = input['port'];
    var entryPoints = input['entryPoints'];
    if (entryPoints != null) {
      var entryPointsTemp0 = <AppConfigItem>[];
      for (var entryPointsValue0 in entryPoints) {
        entryPointsTemp0.add(_appConfigItemDecoder.convert(entryPointsValue0));
      }
      model.entryPoints = entryPointsTemp0;
    }
    var appsTemp0 = <DocListEntry>[];
    for (var appsValue0 in input['apps']) {
      appsTemp0.add(_docListEntryDecoder.convert(appsValue0));
    }
    model.apps = appsTemp0;
    model.currentMonth = input['currentMonth'];
    return model;
  }
}

/// A [ModelEncoder] for [AppConfig].
class AppConfigEncoder extends Converter<AppConfig, Map>
    implements ModelEncoder<AppConfig> {
  final Converter<AppConfigItem, Map> _appConfigItemEncoder;
  final Converter<DocListEntry, Map> _docListEntryEncoder;
  AppConfigEncoder()
      : _appConfigItemEncoder = new AppConfigItemEncoder(),
        _docListEntryEncoder = new DocListEntryEncoder();
  AppConfigEncoder.using(this._appConfigItemEncoder, this._docListEntryEncoder);
  @override
  Map convert(AppConfig input) {
    var model = {};

    model['host'] = input.host;
    model['name'] = input.name;
    var lang = input.lang;
    if (lang != null) {
      model['lang'] = lang;
    }
    var useCurrentDate = input.useCurrentDate;
    if (useCurrentDate != null) {
      model['useCurrentDate'] = useCurrentDate;
    }
    var currentYear = input.currentYear;
    if (currentYear != null) {
      model['currentYear'] = currentYear;
    }
    var port = input.port;
    if (port != null) {
      model['port'] = port;
    }
    var entryPoints = input.entryPoints;
    if (entryPoints != null) {
      var entryPointsTemp0 = [];
      for (var entryPointsValue0 in entryPoints) {
        entryPointsTemp0.add(_appConfigItemEncoder.convert(entryPointsValue0));
      }
      model['entryPoints'] = entryPointsTemp0;
    }
    var appsTemp0 = [];
    for (var appsValue0 in input.apps) {
      appsTemp0.add(_docListEntryEncoder.convert(appsValue0));
    }
    model['apps'] = appsTemp0;
    var currentMonth = input.currentMonth;
    if (currentMonth != null) {
      model['currentMonth'] = currentMonth;
    }

    return model;
  }
}
