// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.nx_inline_measure_def;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxInlineMeasureDef {
  /// Name of the measure.
  @Serialize.field('qLabel', optional: true)
  String qLabel;

  /// Description of the measure
  @Serialize.field('qDescription', optional: true)
  String qDescription;

  /// Definition of the expression in the measure.
  ///  Example: Sum (OrderTotal)
  @Serialize.field('qDef')
  String qDef;

  /// If set to true, percentage values are returned instead of absolute numbers
  @Serialize.field('qRelative', optional: true)
  bool qRelative;

  /// If set to true, the sum of rows total should be used rather than real
  /// expression total
  @Serialize.field('qBrutalSum', optional: true)
  bool qBrutalSum;

  /// Aggregate function. The default value is 0 (Sum of rows)
  @Serialize.field('qAggrFunc', optional: true)
  String qAggrFunc;

  /// 0 means no accumulation
  /// 1 means full accumulation (each y-value accumulates all previous y-values
  /// of the expression)
  /// ≥ 2 means accumulate as many steps as the qAccumulate value
  @Serialize.field('qAccumulate', optional: true)
  int qAccumulate;

  /// If set to true, it inverts the sort criteria in the field
  @Serialize.field('qReverseSort', optional: true)
  bool qReverseSort;

  /// Index of the active expression in a cyclic measure. The indexing starts from 0.
  @Serialize.field('qActiveExpression', optional: true)
  int qActiveExpression;

  /// If set to true, it inverts the sort criteria in the field
  @Serialize.field('qExpressions', optional: true)
  List<String> qExpressions;
  @Serialize.field('qTags', optional: true)
  List<String> qTags;
}
