// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.nx_generic_dimension_properties;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'nx_info.dart';
import 'nx_library_dimension_def.dart';
import 'nx_meta.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class NxGenericDimensionProperties {
  /// Identifier and type of the dimension. This parameter is mandatory.
  @Serialize.field('qInfo')
  NxInfo qInfo;

  /// Definition of the dimension. This parameter is mandatory.
  @Serialize.field('qDim', optional: true)
  NxLibraryDimensionDef qDim;

  /// Metadata.
  @Serialize.field('qMetaDef', optional: true)
  NxMeta qMetaDef;
}
