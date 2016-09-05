// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.models.iv_measure_family;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

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

  /// Выражения этого семейства имеют план (Продажи и так далее)
  @Serialize.field('hasPlan', optional: true)
  bool hasPlan;

  /// По выражениям этого семейства данные есть только в разрезе месяцев
  @Serialize.field('monthly', optional: true)
  bool monthly;
}
