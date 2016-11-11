// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.models.q_hyper_cube_def;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_custom_error_message.dart';
import 'nx_dimension.dart';
import 'nx_measure.dart';
import 'nx_page.dart';
import 'nx_value_expr.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class QHyperCubeDef {
  /// Dimensions
  @Serialize.field('qDimensions')
  List<NxDimension> qDimensions;

  /// To enable the sorting by ascending or descending order in the values of a
  /// measure.This property applies to pivot tables and stacked pivot tables.
  @Serialize.field('qSortbyYValue', optional: true)
  int qSortbyYValue;

  /// Number of left dimensions. (meaningfull for pivot tables)
  @Serialize.field('qNoOfLeftDims', optional: true)
  int qNoOfLeftDims;

  /// Removes zero values.Default is false.
  @Serialize.field('qSuppressZero', optional: true)
  bool qSuppressZero;

  /// Removes missing values.Default is false.
  @Serialize.field('qSuppressMissing', optional: true)
  bool qSuppressMissing;

  /// If this property is set to true, the missing symbols (if any) are replaced
  /// by 0 if the value is a numeric and by an empty string if the value is a string.
  @Serialize.field('qPopulateMissing', optional: true)
  bool qPopulateMissing;

  /// Order the columns of the hypercube should be sorted. The index of the
  /// pseudo-dimension (if any) is -1.
  @Serialize.field('qInterColumnSortOrder', optional: true)
  List<int> qInterColumnSortOrder;

  /// Index array that determines the column order
  @Serialize.field('columnOrder', optional: true)
  List<int> columnOrder;

  /// If this property is set to true, the cells are always expanded. It implies
  /// that it is not possible to collapse any cells.
  @Serialize.field('qAlwaysFullyExpanded', optional: true)
  bool qAlwaysFullyExpanded;

  /// Specifies a calculation condition, which must be fulfilled for the
  /// hypercube to be (re)calculated.
  @Serialize.field('qCalcCond', optional: true)
  NxValueExpr qCalcCond;

  /// If set to true, the total (if any) is shown on the first row.
  @Serialize.field('qShowTotalsAbove', optional: true)
  bool qShowTotalsAbove;

  /// This property applies for pivot tables and allows to change the layout of
  /// the table. An indentation is added to the beginning of each row.
  @Serialize.field('qIndentMode', optional: true)
  bool qIndentMode;

  /// Dimensions
  @Serialize.field('qMeasures')
  List<NxMeasure> qMeasures;

  /// Set to define custom error messages.
  @Serialize.field('customErrorMessage', optional: true)
  NxCustomErrorMessage customErrorMessage;

  /// Initial data set
  @Serialize.field('qInitialDataFetch', optional: true)
  List<NxPage> qInitialDataFetch;

  /// Columns widths, -1 means autosize
  @Serialize.field('columnWidths', optional: true)
  List<int> columnWidths;
}
