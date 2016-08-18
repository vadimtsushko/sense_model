// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.models.iv_master_dimension;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

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
