// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.selection_table_data;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'selection_table_item.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class SelectionTableData {
  /// Код таблицы выбора
  @Serialize.field('tableId')
  String tableId;

  /// Тип выбираемого значения
  @Serialize.field('tableType')
  String tableType;

  /// Множественный выбор
  @Serialize.field('multiple', optional: true)
  bool multiple;

  /// Код таблицы выбора для календаря (используется при подборе мер с учетом недель)
  @Serialize.field('calendarTable', optional: true)
  String calendarTable;
  @Serialize.field('selectedValue', optional: true)
  String selectedValue;

  /// Список ключей выбора (тип зависит от типа таблицы выбора)
  @Serialize.field('keys')
  List<String> keys;
  @Serialize.field('tableItems', optional: true)
  List<SelectionTableItem> tableItems;
}
