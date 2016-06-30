// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.iv_measure;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_filter_param.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMeasure {
  /// Статическая ли это мера
  @Serialize.field('isStatic')
  bool isStatic;

  /// Код поля (если измерение статическое), либо название динамической таблицы,
  /// откуда будет получен текущий код поля
  @Serialize.field('key')
  String key;

  /// Дополнительный параметр для выбора динамической меры
  @Serialize.field('param', optional: true)
  String param;

  /// Необходимо проверить условие отображения колонки
  @Serialize.field('conditional', optional: true)
  bool conditional;

  /// Показывать колонку (рантайм параметр)
  @Serialize.field('visible', optional: true)
  bool visible;

  /// Дополнительный фильтр (используется только для динамических мер)
  @Serialize.field('filters', optional: true)
  List<IvFilterParam> filters;
}
