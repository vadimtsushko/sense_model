// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-24 14:53:01.774400

library sense_model.src.models.nx_page;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxPage {
  /// Position from the left. Corresponds to the first column.
  @Serialize.field('qLeft', optional: true)
  int qLeft;

  /// Position from the top. Corresponds to the first row.
  @Serialize.field('qTop', optional: true)
  int qTop;

  /// Number of columns in the page. The indexing of the columns may vary
  /// depending on whether the cells are expanded or not (parameter
  /// qAlwaysFullyExpanded in HyperCubeDef).
  @Serialize.field('qWidth')
  int qWidth;

  /// Number of rows or elements in the page. The indexing of the rows may vary
  /// depending on whether the cells are expanded or not (parameter
  /// qAlwaysFullyExpanded in HyperCubeDef).
  @Serialize.field('qHeight')
  int qHeight;
}
