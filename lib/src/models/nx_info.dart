// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-24 14:53:01.774400

library sense_model.src.models.nx_info;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxInfo {
  /// Identifier of the object. If the chosen identifier is already in use, the
  /// engine automatically sets another one.
  @Serialize.field('qId')
  String qId;

  /// Type of the object.
  @Serialize.field('qType', optional: true)
  String qType;
}
