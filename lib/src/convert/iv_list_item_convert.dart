// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 11:14:57.399257

library sense_model.src.convert.iv_list_item_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'locale_display_name_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [IvListItem].
class IvListItemDecoder extends Converter<Map, IvListItem>
    implements ModelDecoder<IvListItem> {
  final Converter<Map, LocaleDisplayName> _localeDisplayNameDecoder;
  IvListItemDecoder()
      : _localeDisplayNameDecoder = new LocaleDisplayNameDecoder();
  IvListItemDecoder.using(this._localeDisplayNameDecoder);
  @override
  IvListItem create() => new IvListItem();
  @override
  IvListItem convert(Map input, [IvListItem model]) {
    model ??= create();

    model.id = input['id'];
    var localeDisplayName = input['localeDisplayName'];
    if (localeDisplayName != null) {
      model.localeDisplayName =
          _localeDisplayNameDecoder.convert(localeDisplayName);
    }
    model.title = input['title'];
    return model;
  }
}

/// A [ModelEncoder] for [IvListItem].
class IvListItemEncoder extends Converter<IvListItem, Map>
    implements ModelEncoder<IvListItem> {
  final Converter<LocaleDisplayName, Map> _localeDisplayNameEncoder;
  IvListItemEncoder()
      : _localeDisplayNameEncoder = new LocaleDisplayNameEncoder();
  IvListItemEncoder.using(this._localeDisplayNameEncoder);
  @override
  Map convert(IvListItem input) {
    var model = {};

    model['id'] = input.id;
    var localeDisplayName = input.localeDisplayName;
    if (localeDisplayName != null) {
      model['localeDisplayName'] =
          _localeDisplayNameEncoder.convert(localeDisplayName);
    }
    model['title'] = input.title;

    return model;
  }
}
