// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.chart_definition;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_dimension.dart';
import 'iv_measure.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class ChartDefinition {
  /// Тип визуализации
  @Serialize.field('chartType')
  String chartType;

  /// Код элемента визуализации
  @Serialize.field('chartId')
  String chartId;

  /// Список измерений
  @Serialize.field('dimensions')
  List<IvDimension> dimensions;

  /// Код таблицы селектора для множественного выбора мер (используется вместо
  /// списка мер в генераторе отчетов)
  @Serialize.field('measuresSelector', optional: true)
  String measuresSelector;

  /// Список мер
  @Serialize.field('measures', optional: true)
  List<IvMeasure> measures;
}
