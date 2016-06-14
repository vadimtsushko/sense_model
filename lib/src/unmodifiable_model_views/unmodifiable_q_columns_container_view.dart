// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.unmodifiable_model_views.unmodifiable_q_columns_container_view;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:collection';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// An unmodifiable view over an instance of [QColumnsContainer].
class UnmodifiableQColumnsContainerView implements QColumnsContainer {
  final QColumnsContainer _model;
  final UnmodifiableListView<NxDimension> _qDimensions;
  final UnmodifiableListView<NxMeasure> _qMeasures;

  factory UnmodifiableQColumnsContainerView(QColumnsContainer model) {
    var qDimensions = new UnmodifiableListView<NxDimension>(model.qDimensions);
    var qMeasures = new UnmodifiableListView<NxMeasure>(model.qMeasures);
    return new UnmodifiableQColumnsContainerView._internal(
        model, qDimensions, qMeasures);
  }

  UnmodifiableQColumnsContainerView._internal(
      this._model, this._qDimensions, this._qMeasures);

  @override
  List<NxDimension> get qDimensions => _qDimensions;
  set qDimensions(List<NxDimension> value) {
    throw new UnsupportedError(
        'Cannot modify an unmodifiable QColumnsContainer');
  }

  @override
  List<NxMeasure> get qMeasures => _qMeasures;
  set qMeasures(List<NxMeasure> value) {
    throw new UnsupportedError(
        'Cannot modify an unmodifiable QColumnsContainer');
  }
}
