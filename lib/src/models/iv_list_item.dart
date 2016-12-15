// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.iv_list_item;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'locale_display_name.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvListItem {
  /// Код значения
  @Serialize.field('id')
  String id;
  @Serialize.field('localeDisplayName', optional: true)
  LocaleDisplayName localeDisplayName;

  /// Отображаемое значение
  @Serialize.field('title')
  String title;
}
