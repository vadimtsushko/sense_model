// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.unmodifiable_model_views.unmodifiable_nx_sort_criteria_view;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// An unmodifiable view over an instance of [NxSortCriteria].
class UnmodifiableNxSortCriteriaView implements NxSortCriteria {
  final NxSortCriteria _model;

  UnmodifiableNxSortCriteriaView(this._model);

  @override
  int get qSortByState => _model.qSortByState;
  set qSortByState(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }

  @override
  int get qSortByFrequency => _model.qSortByFrequency;
  set qSortByFrequency(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }

  @override
  int get qSortByNumeric => _model.qSortByNumeric;
  set qSortByNumeric(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }

  @override
  int get qSortByAscii => _model.qSortByAscii;
  set qSortByAscii(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }

  @override
  int get qSortByLoadOrder => _model.qSortByLoadOrder;
  set qSortByLoadOrder(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }

  @override
  int get qSortByExpression => _model.qSortByExpression;
  set qSortByExpression(int value) {
    throw new UnsupportedError('Cannot modify an unmodifiable NxSortCriteria');
  }
}
