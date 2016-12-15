// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.nx_data_point;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxDataPoint {
  /// Set to display data points on line series. Only used if there is at least
  /// one measure with type set to line.
  @Serialize.field('show')
  bool show;

  /// Set to display labels on data points. (F.E. in linechart)
  @Serialize.field('showLabels', optional: true)
  bool showLabels;
}
