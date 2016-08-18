// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.models.iv_measure_type;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMeasureType {
  /// Код семейства
  @Serialize.field('key')
  String key;

  /// Значение отображаемое в списках выбора
  @Serialize.field('displayName')
  String displayName;

  /// Выражения этого типа относятся к плановым показателям
  @Serialize.field('isPlan', optional: true)
  bool isPlan;
}
