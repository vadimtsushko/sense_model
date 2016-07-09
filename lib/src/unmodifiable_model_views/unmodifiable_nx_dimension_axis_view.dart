// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.unmodifiable_model_views.unmodifiable_nx_dimension_axis_view;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// An unmodifiable view over an instance of [NxDimensionAxis].
class UnmodifiableNxDimensionAxisView implements NxDimensionAxis {
  final NxDimensionAxis _model;

  UnmodifiableNxDimensionAxisView(this._model);

  @override
  String get show => _model.show;
  set show(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxDimensionAxis');
  }

  @override
  String get label => _model.label;
  set label(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxDimensionAxis');
  }

  @override
  String get dock => _model.dock;
  set dock(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxDimensionAxis');
  }
}
