// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 11:14:57.399257

library sense_model.src.models.nx_grid_line;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxGridLine {
  /// Set to use automatic grid line spacing.
  @Serialize.field('auto')
  bool auto;

  /// Grid line spacing. Used only when auto is set to false
  @Serialize.field('spacing', optional: true)
  int spacing;
}
