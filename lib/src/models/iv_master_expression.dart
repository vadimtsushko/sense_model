// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.models.iv_master_expression;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'locale_display_name.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMasterExpression {
  /// Семейство мер (Продажи, ВП, и т.д.)
  @Serialize.field('family', optional: true)
  String family;

  /// Тип меры (План, Факт, Сравнение с предыдущим месяцем и т.д)
  @Serialize.field('type', optional: true)
  String type;

  /// Вид выражения
  @Serialize.field('command')
  String command;

  /// Расширенная подсказка (для отображения в тултипах)
  @Serialize.field('comment', optional: true)
  String comment;

  /// Исходная формула
  @Serialize.field('definition')
  String definition;

  /// Формат выражения
  @Serialize.field('format', optional: true)
  String format;

  /// Окончательный вид формулы, после всех преобразований
  @Serialize.field('expandedDefinition')
  String expandedDefinition;

  /// Заголовок для отображения в колонках и так далее
  @Serialize.field('label', optional: true)
  String label;

  /// Заголовок для отображения в списках выбора
  @Serialize.field('selectorLabel', optional: true)
  String selectorLabel;

  /// Код макро
  @Serialize.field('macro', optional: true)
  String macro;

  /// Описание выражения (не для отображения в интерфейсе, описание алгоритма и
  /// так далее)
  @Serialize.field('description', optional: true)
  String description;

  /// Ширина колонки по умолчанию (как строка, ограничение текущего формата
  /// выгрузки из Sublime)
  @Serialize.field('width', optional: true)
  String width;

  /// Ширина колонки по умолчанию
  @Serialize.field('intWidth', optional: true)
  int intWidth;
  @Serialize.field('localeDisplayName', optional: true)
  LocaleDisplayName localeDisplayName;

  /// Уникальный код выражения
  @Serialize.field('name')
  String name;
}
