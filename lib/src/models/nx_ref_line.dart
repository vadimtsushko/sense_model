// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 16:43:12.078728

library sense_model.src.models.nx_ref_line;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_ref_line_expr.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxRefLine {
  /// Set to true to display this reference line.
  @Serialize.field('show', optional: true)
  bool show;

  /// Color
  @Serialize.field('color', optional: true)
  int color;

  /// Reference line label.
  @Serialize.field('label', optional: true)
  String label;

  /// Expression
  @Serialize.field('refLineExpr')
  NxRefLineExpr refLineExpr;
}
