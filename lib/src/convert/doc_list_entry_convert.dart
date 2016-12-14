// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.doc_list_entry_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [DocListEntry].
class DocListEntryDecoder extends Converter<Map, DocListEntry>
    implements ModelDecoder<DocListEntry> {
  @override
  DocListEntry create() => new DocListEntry();
  @override
  DocListEntry convert(Map input, [DocListEntry model]) {
    model ??= create();

    model.qDocName = input['qDocName'];
    model.qDocId = input['qDocId'];
    model.qTitle = input['qTitle'];
    model.qLastReloadTime = input['qLastReloadTime'];
    model.excludedDimensions = input['excludedDimensions'];
    model.qReadOnly = input['qReadOnly'];
    return model;
  }
}

/// A [ModelEncoder] for [DocListEntry].
class DocListEntryEncoder extends Converter<DocListEntry, Map>
    implements ModelEncoder<DocListEntry> {
  @override
  Map convert(DocListEntry input) {
    var model = {};

    model['qDocName'] = input.qDocName;
    var qDocId = input.qDocId;
    if (qDocId != null) {
      model['qDocId'] = qDocId;
    }
    var qTitle = input.qTitle;
    if (qTitle != null) {
      model['qTitle'] = qTitle;
    }
    var qLastReloadTime = input.qLastReloadTime;
    if (qLastReloadTime != null) {
      model['qLastReloadTime'] = qLastReloadTime;
    }
    var excludedDimensions = input.excludedDimensions;
    if (excludedDimensions != null) {
      model['excludedDimensions'] = excludedDimensions;
    }
    var qReadOnly = input.qReadOnly;
    if (qReadOnly != null) {
      model['qReadOnly'] = qReadOnly;
    }

    return model;
  }
}
