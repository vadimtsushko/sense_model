// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 16:43:12.078728

library sense_model.src.models.nx_measure_axis;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxMeasureAxis {
  /// Set to display the labels and titles
  @Serialize.field('show')
  String show;

  /// Set the label orientation
  @Serialize.field('label', optional: true)
  String label;

  /// Sets the axis docking position
  @Serialize.field('dock', optional: true)
  String dock;

  /// Logarithmic scale.
  @Serialize.field('logarithmic', optional: true)
  bool logarithmic;

  /// Set to use automatic min/max for measure color.
  @Serialize.field('autoMinMax', optional: true)
  bool autoMinMax;

  /// Set custom max/min
  @Serialize.field('minMax', optional: true)
  String minMax;

  /// Measure axis spacing
  @Serialize.field('spacing', optional: true)
  num spacing;

  /// min
  @Serialize.field('min', optional: true)
  String min;

  /// max
  @Serialize.field('max', optional: true)
  String max;
}
