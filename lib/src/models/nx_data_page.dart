// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.nx_data_page;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxDataPage {
  /// Some text
  @Serialize.field('qMatrix', optional: true)
  String qMatrix;

  /// A value
  @Serialize.field('qNum', optional: true)
  num qNum;

  /// Rank number of the value, starting from 0.
  @Serialize.field('qElemNumber', optional: true)
  int qElemNumber;

  /// State of the value. The default state for a measure is L.
  @Serialize.field('qState', optional: true)
  String qState;

  /// Is set to true, if qText and qNum are empty.
  @Serialize.field('qIsEmpty', optional: true)
  bool qIsEmpty;

  /// Is set to true if a total is displayed in the cell.Not applicable to list
  /// objects.
  @Serialize.field('qIsTotalCell', optional: true)
  bool qIsTotalCell;

  /// If set to true if the cell belongs to the group Others..Not applicable to
  /// list objects.
  @Serialize.field('qIsOtherCell', optional: true)
  bool qIsOtherCell;

  /// Frequency of the value.
  @Serialize.field('qFrequency', optional: true)
  String qFrequency;
  @Serialize.field('qNoOfLeftDims', optional: true)
  int qNoOfLeftDims;

  /// Is set to true if the value is Null.
  @Serialize.field('qIsNull', optional: true)
  bool qIsNull;
}
