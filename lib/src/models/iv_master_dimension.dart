// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-17 11:59:03.825591

library sense_model.src.models.iv_master_dimension;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'locale_display_name.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMasterDimension {
  /// Код мастер-измерения
  @Serialize.field('id')
  String id;

  /// Заголовок мастер-измерения
  @Serialize.field('title', optional: true)
  String title;

  /// Группировка
  @Serialize.field('isCalculatedDimension', optional: true)
  bool isCalculatedDimension;
  @Serialize.field('localeDisplayName', optional: true)
  LocaleDisplayName localeDisplayName;

  /// Группировка
  @Serialize.field('grouping', optional: true)
  String grouping;

  /// Ширина колонки по умолчанию
  @Serialize.field('width', optional: true)
  int width;

  /// Список заголовков
  @Serialize.field('labels', optional: true)
  List<String> labels;

  /// Список полей
  @Serialize.field('fields', optional: true)
  List<String> fields;
}
