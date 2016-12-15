// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.iv_measure;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_attr_expression.dart';
import 'iv_expression_param.dart';
import 'iv_filter_param.dart';
import 'nx_measure_series.dart';
import 'nx_sort_criteria.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvMeasure {
  /// Код меры
  @Serialize.field('key')
  String key;

  /// Список параметров для выражения - шаблона
  @Serialize.field('params', optional: true)
  List<IvExpressionParam> params;

  /// Для динамического форматирования смотреть параметр с этим индексом
  @Serialize.field('formatParamIndex', optional: true)
  int formatParamIndex;

  /// Код таблицы выбора для кода меры
  @Serialize.field('keySelector', optional: true)
  String keySelector;

  /// Статический код типа выражения
  @Serialize.field('type', optional: true)
  String type;

  /// Код таблицы выбора для типа выражения
  @Serialize.field('typeSelector', optional: true)
  String typeSelector;

  /// Статический код семейства выражения
  @Serialize.field('family', optional: true)
  String family;

  /// Код таблицы выбора семейства выражений
  @Serialize.field('familySelector', optional: true)
  String familySelector;

  /// Необходимо проверить условие отображения колонки
  @Serialize.field('conditional', optional: true)
  bool conditional;

  /// Defines the sort criteria
  @Serialize.field('qSortBy', optional: true)
  NxSortCriteria qSortBy;

  /// Ширина колонки
  @Serialize.field('width', optional: true)
  int width;

  /// If set to true, percentage values are returned instead of absolute numbers.
  @Serialize.field('qRelative', optional: true)
  bool qRelative;

  /// Режим накопления (0 по умолчанию, 1 - полное накопление)
  @Serialize.field('qAccumulate', optional: true)
  int qAccumulate;

  /// If set to true, the sum of rows total should be used rather than real
  /// expression total
  @Serialize.field('qBrutalSum', optional: true)
  bool qBrutalSum;

  /// Aggregate function
  @Serialize.field('qAggrFunc', optional: true)
  String qAggrFunc;
  @Serialize.field('backgroundColor', optional: true)
  IvAttrExpression backgroundColor;
  @Serialize.field('fontColor', optional: true)
  IvAttrExpression fontColor;

  /// Показывать колонку (рантайм параметр)
  @Serialize.field('visible', optional: true)
  bool visible;

  /// Дополнительные параметры меры для комбочарта
  @Serialize.field('series', optional: true)
  NxMeasureSeries series;

  /// Направление сортировки (когда мера используется как мера для сортировки)
  @Serialize.field('sortOrder', optional: true)
  int sortOrder;

  /// Дополнительный фильтр (используется только для динамических мер)
  @Serialize.field('filters', optional: true)
  List<IvFilterParam> filters;
}
