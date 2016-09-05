// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-04 19:55:17.892601

library sense_model.src.models.iv_dimension;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_attr_expression.dart';
import 'iv_measure.dart';
import 'nx_other_total_spec_prop.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvDimension {
  /// Статическое ли это измерение
  @Serialize.field('isStatic', optional: true)
  bool isStatic;

  /// Динамически создаваемая иерархия
  @Serialize.field('dynamicHyerarchy', optional: true)
  bool dynamicHyerarchy;

  /// Код таблицы выбора выражения (дополнительный параметр для измерения)
  @Serialize.field('measureSelector', optional: true)
  String measureSelector;

  /// Необходимо проверить условие отображения колонки
  @Serialize.field('contitional', optional: true)
  String contitional;

  /// Ширина колонки
  @Serialize.field('width', optional: true)
  int width;

  /// Sorts the field values according to their logical state (selected,
  /// optional, alternative or excluded)
  @Serialize.field('sortByNumeric', optional: true)
  int sortByNumeric;

  /// Sorts the field by alphabetical order
  @Serialize.field('sortByAscii', optional: true)
  int sortByAscii;

  /// Sorts the field values by the initial load order
  @Serialize.field('sortByLoadOrder', optional: true)
  int sortByLoadOrder;

  /// Выражение сортировки (по убыванию)
  @Serialize.field('sortByExpression', optional: true)
  IvMeasure sortByExpression;

  /// Показывать колонку (рантайм параметр)
  @Serialize.field('visible', optional: true)
  bool visible;

  /// Sets the dimension limits. Each dimension of a hypercube is configured
  /// separately. Just stub for now. Should add type in future
  @Serialize.field('qOtherTotalSpec', optional: true)
  NxOtherTotalSpecProp qOtherTotalSpec;
  @Serialize.field('backgroundColor', optional: true)
  IvAttrExpression backgroundColor;
  @Serialize.field('fontColor', optional: true)
  IvAttrExpression fontColor;

  /// If set to true, all dimension values are shown.
  @Serialize.field('qShowAll', optional: true)
  bool qShowAll;

  /// This property is used when some dimension limits are set.
  @Serialize.field('qOtherLabel', optional: true)
  String qOtherLabel;

  /// If this property is set, the total of the calculated values is returned.
  @Serialize.field('qTotalLabel', optional: true)
  String qTotalLabel;

  /// Код поля (если измерение статическое), либо название динамической таблицы,
  /// откуда будет получен текущий код поля
  @Serialize.field('key')
  String key;
}
