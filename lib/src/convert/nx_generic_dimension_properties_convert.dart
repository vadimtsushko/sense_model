// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_generic_dimension_properties_convert;

//---------------------------------------------------------------------
// Standard libraries
//---------------------------------------------------------------------

import 'dart:convert';

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/convert.dart';
import 'package:sense_model/models.dart';
import 'nx_info_convert.dart';
import 'nx_library_dimension_def_convert.dart';
import 'nx_meta_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxGenericDimensionProperties].
class NxGenericDimensionPropertiesDecoder
    extends Converter<Map, NxGenericDimensionProperties>
    implements ModelDecoder<NxGenericDimensionProperties> {
  final Converter<Map, NxInfo> _nxInfoDecoder;
  final Converter<Map, NxLibraryDimensionDef> _nxLibraryDimensionDefDecoder;
  final Converter<Map, NxMeta> _nxMetaDecoder;
  NxGenericDimensionPropertiesDecoder()
      : _nxInfoDecoder = new NxInfoDecoder(),
        _nxLibraryDimensionDefDecoder = new NxLibraryDimensionDefDecoder(),
        _nxMetaDecoder = new NxMetaDecoder();
  NxGenericDimensionPropertiesDecoder.using(this._nxInfoDecoder,
      this._nxLibraryDimensionDefDecoder, this._nxMetaDecoder);
  @override
  NxGenericDimensionProperties create() => new NxGenericDimensionProperties();
  @override
  NxGenericDimensionProperties convert(Map input,
      [NxGenericDimensionProperties model]) {
    model ??= create();

    model.qInfo = _nxInfoDecoder.convert(input['qInfo']);
    var qDim = input['qDim'];
    if (qDim != null) {
      model.qDim = _nxLibraryDimensionDefDecoder.convert(qDim);
    }
    var qMetaDef = input['qMetaDef'];
    if (qMetaDef != null) {
      model.qMetaDef = _nxMetaDecoder.convert(qMetaDef);
    }

    return model;
  }
}

/// A [ModelEncoder] for [NxGenericDimensionProperties].
class NxGenericDimensionPropertiesEncoder
    extends Converter<NxGenericDimensionProperties, Map>
    implements ModelEncoder<NxGenericDimensionProperties> {
  final Converter<NxInfo, Map> _nxInfoEncoder;
  final Converter<NxLibraryDimensionDef, Map> _nxLibraryDimensionDefEncoder;
  final Converter<NxMeta, Map> _nxMetaEncoder;
  NxGenericDimensionPropertiesEncoder()
      : _nxInfoEncoder = new NxInfoEncoder(),
        _nxLibraryDimensionDefEncoder = new NxLibraryDimensionDefEncoder(),
        _nxMetaEncoder = new NxMetaEncoder();
  NxGenericDimensionPropertiesEncoder.using(this._nxInfoEncoder,
      this._nxLibraryDimensionDefEncoder, this._nxMetaEncoder);
  @override
  Map convert(NxGenericDimensionProperties input) {
    var model = {};

    model['qInfo'] = _nxInfoEncoder.convert(input.qInfo);
    var qDim = input.qDim;
    if (qDim != null) {
      model['qDim'] = _nxLibraryDimensionDefEncoder.convert(qDim);
    }
    var qMetaDef = input.qMetaDef;
    if (qMetaDef != null) {
      model['qMetaDef'] = _nxMetaEncoder.convert(qMetaDef);
    }

    return model;
  }
}
