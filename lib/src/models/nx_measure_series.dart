// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-11 17:56:46.338198

library sense_model.src.models.nx_measure_series;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxMeasureSeries {
  /// Set how to visualize the series
  @Serialize.field('type')
  String type;
  @Serialize.field('axis', optional: true)
  int axis;
  @Serialize.field('marker', optional: true)
  String marker;
  @Serialize.field('markerFill', optional: true)
  bool markerFill;
}
