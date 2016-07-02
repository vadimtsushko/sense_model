// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.unmodifiable_model_views.unmodifiable_nx_measure_series_view;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// An unmodifiable view over an instance of [NxMeasureSeries].
class UnmodifiableNxMeasureSeriesView implements NxMeasureSeries {
  final NxMeasureSeries _model;

  UnmodifiableNxMeasureSeriesView(this._model);

  @override
  String get type => _model.type;
  set type(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureSeries');
  }

  @override
  int get axis => _model.axis;
  set axis(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureSeries');
  }

  @override
  String get marker => _model.marker;
  set marker(String value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureSeries');
  }

  @override
  bool get markerFill => _model.markerFill;
  set markerFill(bool value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxMeasureSeries');
  }
}
