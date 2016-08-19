// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-19 12:36:50.431303

library sense_model.src.models.nx_other_total_spec_prop;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_value_expr.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxOtherTotalSpecProp {
  /// If set to TOTAL_EXPR, the total of the dimension values is returned.
  @Serialize.field('qTotalMode')
  String qTotalMode;

  /// This parameter applies when there are several measures. Name of the measure
  /// to use for the calculation of Others for a specific dimension.
  @Serialize.field('qReferencedExpression', optional: true)
  String qReferencedExpression;

  /// Number of values to display. The number of values can be entered as a
  /// calculated formula. This parameter is used when qOtherMode is set to
  /// OTHER_COUNTED
  @Serialize.field('qOtherCounted', optional: true)
  NxValueExpr qOtherCounted;

  /// Value used to limit the dimension values. The limit can be entered as a
  /// calculated formula. This parameter is used when qOtherMode is set to:
  /// OTHER_ABS_LIMITED OTHER_REL_LIMITED OTHER_ABS_ACC_TARGET OTHER_REL_ACC_TARGET
  @Serialize.field('qOtherLimit', optional: true)
  NxValueExpr qOtherLimit;

  /// If set to TOTAL_EXPR, the total of the dimension values is returned.
  @Serialize.field('qOtherLimitMode', optional: true)
  String qOtherLimitMode;

  /// If set to true, the group Others is not displayed as a dimension value.
  @Serialize.field('qSuppressOther', optional: true)
  bool qSuppressOther;

  /// This parameter is used when qOtherMode is set to: OTHER_ABS_LIMITED
  /// OTHER_REL_LIMITED OTHER_ABS_ACC_TARGET OTHER_REL_ACC_TARGET and when the
  /// dimension values include not numeric values. Set this parameter to true to
  /// include text values in the returned values.
  @Serialize.field('qForceBadValueKeeping', optional: true)
  bool qForceBadValueKeeping;

  /// Set this parameter to true to allow the calculation of Others even if the
  /// engine detects some potential mistakes.For example the country Russia is
  /// part of the continent Europe and Asia. If you have an hypercube with two
  /// dimensions Country and Continent and one measure Population, the engine can
  /// detect that the population of Russia is included in both the continent Asia
  /// and Europe.
  @Serialize.field('qApplyEvenWhenPossiblyWrongResult', optional: true)
  bool qApplyEvenWhenPossiblyWrongResult;

  /// Determines how many dimension values are displayed
  @Serialize.field('qOtherMode', optional: true)
  String qOtherMode;
}
