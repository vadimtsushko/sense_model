// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.nx_dimension_axis;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxDimensionAxis {
  /// Set to display the labels and titles
  @Serialize.field('show')
  String show;

  /// Set the label orientation
  @Serialize.field('label', optional: true)
  String label;

  /// Sets the axis docking position
  @Serialize.field('dock', optional: true)
  String dock;
}
