// Generated by Dogma Dart. DO NOT MODIFY!
// 2017-01-17 11:59:03.825591

library sense_model.src.models.nx_meta;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxMeta {
  /// Name of object
  @Serialize.field('title')
  String title;

  /// Description of object
  @Serialize.field('description', optional: true)
  String description;

  /// Tags
  @Serialize.field('tags', optional: true)
  List<String> tags;
}
