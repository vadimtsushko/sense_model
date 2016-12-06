// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 16:43:12.078728

library sense_model.src.models.iv_measure_family;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'locale_display_name.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMeasureFamily {
  /// Код семейства
  @Serialize.field('key')
  String key;

  /// Значение отображаемое в списках выбора
  @Serialize.field('displayName')
  String displayName;
  @Serialize.field('localeDisplayName', optional: true)
  LocaleDisplayName localeDisplayName;

  /// Выражения этого семейства имеют план (Продажи и так далее)
  @Serialize.field('hasPlan', optional: true)
  bool hasPlan;

  /// Рост значения расценивается как ухудшение показателя
  @Serialize.field('inverted', optional: true)
  bool inverted;

  /// Процентный показатель
  @Serialize.field('percentValue', optional: true)
  bool percentValue;

  /// Единица измерения
  @Serialize.field('currency', optional: true)
  String currency;

  /// Формат выражения
  @Serialize.field('format', optional: true)
  String format;

  /// Множитель по умолчанию (1000 для показателей в тыс. руб.)
  @Serialize.field('defaultMultiplier', optional: true)
  num defaultMultiplier;

  /// По выражениям этого семейства данные есть только в разрезе месяцев
  @Serialize.field('monthly', optional: true)
  bool monthly;

  /// Единый цвет меры (для графиков)
  @Serialize.field('solidcolor', optional: true)
  num solidcolor;
}
