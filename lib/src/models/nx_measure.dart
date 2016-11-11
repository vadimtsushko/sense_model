// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.models.nx_measure;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_attr_expr_def.dart';
import 'nx_inline_measure_def.dart';
import 'nx_sort_criteria.dart';
import 'nx_value_expr.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxMeasure {
  /// Should be set to `measure` simetimes
  @Serialize.field('type', optional: true)
  String type;

  /// Refers to a measure stored in the library
  @Serialize.field('qLibraryId', optional: true)
  String qLibraryId;

  /// Definition of the expression in the measure.
  ///  Example: Sum (OrderTotal)
  @Serialize.field('qDef')
  NxInlineMeasureDef qDef;

  /// Not documented
  @Serialize.field('autoSort', optional: true)
  bool autoSort;

  /// Not documented
  @Serialize.field('numFormatFromTemplate', optional: true)
  bool numFormatFromTemplate;

  /// Defines the sort criteria
  @Serialize.field('qSortBy', optional: true)
  NxSortCriteria qSortBy;
  @Serialize.field('qAttributeExpressions', optional: true)
  List<NxAttrExprDef> qAttributeExpressions;

  /// Specifies a calculation condition, which must be fulfilled for the measure
  /// to be calculated
  @Serialize.field('qCalcCond', optional: true)
  NxValueExpr qCalcCond;
}
