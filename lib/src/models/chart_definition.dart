// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-24 14:53:01.774400

library sense_model.src.models.chart_definition;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_dimension.dart';
import 'iv_measure.dart';
import 'nx_bar_grouping.dart';
import 'nx_color.dart';
import 'nx_data_point.dart';
import 'nx_dimension_axis.dart';
import 'nx_donut.dart';
import 'nx_grid_line.dart';
import 'nx_legend.dart';
import 'nx_measure_axis.dart';
import 'nx_page.dart';
import 'nx_ref_line_container.dart';

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
  @Serialize.field('dimensions', optional: true)
  List<IvDimension> dimensions;

  /// Код таблицы селектора для множественного выбора мер (используется вместо
  /// списка мер в генераторе отчетов)
  @Serialize.field('measuresSelector', optional: true)
  String measuresSelector;
  @Serialize.field('hierarchySelectors', optional: true)
  List<String> hierarchySelectors;

  /// Список мер
  @Serialize.field('measures', optional: true)
  List<IvMeasure> measures;
  @Serialize.field('title', optional: true)
  String title;
  @Serialize.field('showTitles', optional: true)
  bool showTitles;

  /// If set to true, the total (if any) is shown on the first row.
  @Serialize.field('qShowTotalsAbove', optional: true)
  bool qShowTotalsAbove;
  @Serialize.field('updateAfterCreation', optional: true)
  bool updateAfterCreation;
  @Serialize.field('alwaysRecreate', optional: true)
  bool alwaysRecreate;
  @Serialize.field('suppressLoadIndicator', optional: true)
  bool suppressLoadIndicator;
  @Serialize.field('hideEmptyMeasure', optional: true)
  bool hideEmptyMeasure;

  /// If this property is set to true, the missing symbols (if any) are replaced
  /// by 0 if the value is a numeric and by an empty string if the value is a string.
  @Serialize.field('qPopulateMissing', optional: true)
  bool qPopulateMissing;
  @Serialize.field('hideNoPlanMeasure', optional: true)
  bool hideNoPlanMeasure;

  /// Reference line settings.
  @Serialize.field('refLine', optional: true)
  NxRefLineContainer refLine;
  @Serialize.field('autoWidth', optional: true)
  bool autoWidth;
  @Serialize.field('subtitle', optional: true)
  String subtitle;
  @Serialize.field('footnote', optional: true)
  String footnote;

  /// Bar grouping settings
  @Serialize.field('barGrouping', optional: true)
  NxBarGrouping barGrouping;

  /// Piechart donut properties
  @Serialize.field('donut', optional: true)
  NxDonut donut;

  /// Color properties
  @Serialize.field('color', optional: true)
  NxColor color;

  /// Data point settings
  @Serialize.field('dataPoint', optional: true)
  NxDataPoint dataPoint;

  /// Legend settings
  @Serialize.field('legend', optional: true)
  NxLegend legend;

  /// Legend settings
  @Serialize.field('dimensionAxis', optional: true)
  NxDimensionAxis dimensionAxis;

  /// Initial data set
  @Serialize.field('qInitialDataFetch', optional: true)
  NxPage qInitialDataFetch;

  /// Legend settings
  @Serialize.field('measureAxis', optional: true)
  NxMeasureAxis measureAxis;
  @Serialize.field('preferContinuousAxis', optional: true)
  bool preferContinuousAxis;

  /// Set to define custom error messages.
  @Serialize.field('customErrorMessage', optional: true)
  String customErrorMessage;

  /// Sets the null value presentation
  @Serialize.field('nullMode', optional: true)
  String nullMode;

  /// Set the type of line chart. Can be one of:
  @Serialize.field('lineType', optional: true)
  String lineType;

  /// Stack areas. Dependent of lineType property.
  @Serialize.field('stackedArea', optional: true)
  bool stackedArea;

  /// Set to stack positive and negative values separately. Dependent of lineType
  /// property.
  @Serialize.field('separateStacking', optional: true)
  bool separateStacking;

  /// Grid line settings
  @Serialize.field('gridLine', optional: true)
  NxGridLine gridLine;

  /// Removes zero values.Default is false.
  @Serialize.field('suppressZero', optional: true)
  bool suppressZero;

  /// Removes missing values.Default is false.
  @Serialize.field('suppressMissing', optional: true)
  bool suppressMissing;

  /// To enable the sorting by ascending or descending order in the values of a
  /// measure.This property applies to pivot tables and stacked pivot tables.
  @Serialize.field('sortbyYValue', optional: true)
  int sortbyYValue;

  /// Order the columns of the hypercube should be sorted. The index of the
  /// pseudo-dimension (if any) is -1.
  @Serialize.field('qInterColumnSortOrder', optional: true)
  List<int> qInterColumnSortOrder;

  /// Number of left dimensions. (meaningfull for pivot tables)
  @Serialize.field('qNoOfLeftDims', optional: true)
  int qNoOfLeftDims;

  /// Removes zero values.Default is false.
  @Serialize.field('qSuppressZero', optional: true)
  bool qSuppressZero;

  /// Removes missing values.Default is false.
  @Serialize.field('qSuppressMissing', optional: true)
  bool qSuppressMissing;

  /// If this property is set to true, the cells are always expanded. It implies
  /// that it is not possible to collapse any cells.
  @Serialize.field('qAlwaysFullyExpanded', optional: true)
  bool qAlwaysFullyExpanded;

  /// Index array that determines the column order
  @Serialize.field('columnOrder', optional: true)
  List<int> columnOrder;

  /// Orientation settings. If vertical, the dimension axis can only be docked on
  /// bottom or top and measure axis on left or right
  @Serialize.field('orientation', optional: true)
  String orientation;
}
