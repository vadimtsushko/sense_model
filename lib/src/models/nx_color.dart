// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-15 11:30:01.492953

library sense_model.src.models.nx_color;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxColor {
  /// Set to use automatic coloring.
  @Serialize.field('auto')
  bool auto;

  /// Set to use single color
  @Serialize.field('singleColor', optional: true)
  int singleColor;

  /// Sets the coloring mode for the chart
  @Serialize.field('mode', optional: true)
  String mode;

  /// Set to use persistent colors on data points between selections
  @Serialize.field('persistent', optional: true)
  bool persistent;

  /// Set to define whether the result of the expression is a valid CSS3 color.
  @Serialize.field('expressionIsColor', optional: true)
  bool expressionIsColor;

  /// Label to be defined on tool tips when using a coloring expression. Only
  /// used if expressionIsColor is set to false.
  @Serialize.field('expressionLabel', optional: true)
  String expressionLabel;

  /// Measure color scheme. Can be one of: sg (sequential, gradient), sc
  /// (sequential, classes), dg (diverging, gradient), dc (diverging, classes)
  @Serialize.field('measureScheme', optional: true)
  String measureScheme;

  /// Set to reverse the color scheme
  @Serialize.field('reverseScheme', optional: true)
  bool reverseScheme;

  /// Dimension color scheme
  @Serialize.field('dimensionScheme', optional: true)
  String dimensionScheme;

  /// Id of the dimension to base the coloring on. Should use the CID on the
  /// dimension.
  @Serialize.field('dimensionId', optional: true)
  String dimensionId;

  /// Set to use automatic min/max for measure color
  @Serialize.field('autoMinMax', optional: true)
  bool autoMinMax;

  /// ValueExpressionContainer
  @Serialize.field('measureMin', optional: true)
  String measureMin;

  /// ValueExpressionContainer
  @Serialize.field('measureMax', optional: true)
  String measureMax;
}
