// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.unmodifiable_model_views.unmodifiable_nx_measure_axis_view;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// An unmodifiable view over an instance of [NxMeasureAxis].
class UnmodifiableNxMeasureAxisView implements NxMeasureAxis {
  final NxMeasureAxis _model;

  UnmodifiableNxMeasureAxisView(this._model);

  @override
  String get show => _model.show;
  set show(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  String get label => _model.label;
  set label(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  String get dock => _model.dock;
  set dock(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  bool get logarithmic => _model.logarithmic;
  set logarithmic(bool value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  bool get autoMinMax => _model.autoMinMax;
  set autoMinMax(bool value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  String get minMax => _model.minMax;
  set minMax(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  String get min => _model.min;
  set min(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }

  @override
  String get max => _model.max;
  set max(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureAxis');
  }
}
