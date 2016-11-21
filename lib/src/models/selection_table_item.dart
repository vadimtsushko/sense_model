// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.selection_table_item;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class SelectionTableItem {
  /// Код поля или выражения
  @Serialize.field('value')
  String value;

  /// Для этого выражения есть аналог с учетом недель
  @Serialize.field('canBeWeekly', optional: true)
  bool canBeWeekly;

  /// Является ли это значение иерархическим измерением (рантайм параметр)
  @Serialize.field('isHierarchy', optional: true)
  bool isHierarchy;

  /// Дополнительный параметр (обычно не отображается в списках выбора)
  @Serialize.field('param', optional: true)
  String param;

  /// Строка, которое будет отображаться в списке выбора
  @Serialize.field('displayValue', optional: true)
  String displayValue;
}
