// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-08-18 16:04:21.241340

library sense_model.src.models.nx_legend;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxLegend {
  /// Set to display the legend.
  @Serialize.field('show')
  bool show;

  /// Display the legend title
  @Serialize.field('showTitle', optional: true)
  bool showTitle;

  /// Sets the legend position
  @Serialize.field('dock', optional: true)
  String dock;
}
