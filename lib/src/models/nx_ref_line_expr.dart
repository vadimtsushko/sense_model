// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-17 11:59:03.825591

library sense_model.src.models.nx_ref_line_expr;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxRefLineExpr {
  /// Expression for the value used in the visualization
  @Serialize.field('value')
  num value;

  /// Expression for the value used in the visualization
  @Serialize.field('label', optional: true)
  String label;
}
