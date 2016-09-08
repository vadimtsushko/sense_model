// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-09-07 13:16:59.317938

library sense_model.src.models.nx_inline_dimension_def;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_attr_expr_def.dart';
import 'nx_field_attributes.dart';
import 'nx_sort_criteria.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxInlineDimensionDef {
  /// Array of field names.
  ///  When creating a grouped dimension, more than one field name is defined
  @Serialize.field('qFieldDefs', optional: true)
  List<String> qFieldDefs;

  /// Array of field labels.
  @Serialize.field('qFieldLabels', optional: true)
  List<String> qFieldLabels;

  /// Used to define a cyclic group or drill-down group
  @Serialize.field('qGrouping', optional: true)
  String qGrouping;

  /// Defines the sorting criteria in the field.
  @Serialize.field('qSortCriterias', optional: true)
  List<NxSortCriteria> qSortCriterias;

  /// Defines the format of the value.
  @Serialize.field('qNumberPresentations', optional: true)
  List<NxFieldAttributes> qNumberPresentations;

  /// If set to true, it inverts the sort criteria in the field.
  @Serialize.field('qReverseSort', optional: true)
  bool qReverseSort;
  @Serialize.field('qAttributeExpressions', optional: true)
  List<NxAttrExprDef> qAttributeExpressions;

  /// ndex of the active field in a cyclic dimension
  @Serialize.field('qActiveField', optional: true)
  int qActiveField;
}
