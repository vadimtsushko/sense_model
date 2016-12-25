// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.convert.nx_generic_measure_properties_convert;

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
import 'nx_library_measure_def_convert.dart';
import 'nx_meta_convert.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

/// A [ModelDecoder] for [NxGenericMeasureProperties].
class NxGenericMeasurePropertiesDecoder
    extends Converter<Map, NxGenericMeasureProperties>
    implements ModelDecoder<NxGenericMeasureProperties> {
  final Converter<Map, NxInfo> _nxInfoDecoder;
  final Converter<Map, NxLibraryMeasureDef> _nxLibraryMeasureDefDecoder;
  final Converter<Map, NxMeta> _nxMetaDecoder;
  NxGenericMeasurePropertiesDecoder()
      : _nxInfoDecoder = new NxInfoDecoder(),
        _nxLibraryMeasureDefDecoder = new NxLibraryMeasureDefDecoder(),
        _nxMetaDecoder = new NxMetaDecoder();
  NxGenericMeasurePropertiesDecoder.using(this._nxInfoDecoder,
      this._nxLibraryMeasureDefDecoder, this._nxMetaDecoder);
  @override
  NxGenericMeasureProperties create() => new NxGenericMeasureProperties();
  @override
  NxGenericMeasureProperties convert(Map input,
      [NxGenericMeasureProperties model]) {
    model ??= create();

    model.qInfo = _nxInfoDecoder.convert(input['qInfo']);
    var qMeasure = input['qMeasure'];
    if (qMeasure != null) {
      model.qMeasure = _nxLibraryMeasureDefDecoder.convert(qMeasure);
    }
    model.qMetaDef = _nxMetaDecoder.convert(input['qMetaDef']);

    return model;
  }
}

/// A [ModelEncoder] for [NxGenericMeasureProperties].
class NxGenericMeasurePropertiesEncoder
    extends Converter<NxGenericMeasureProperties, Map>
    implements ModelEncoder<NxGenericMeasureProperties> {
  final Converter<NxInfo, Map> _nxInfoEncoder;
  final Converter<NxLibraryMeasureDef, Map> _nxLibraryMeasureDefEncoder;
  final Converter<NxMeta, Map> _nxMetaEncoder;
  NxGenericMeasurePropertiesEncoder()
      : _nxInfoEncoder = new NxInfoEncoder(),
        _nxLibraryMeasureDefEncoder = new NxLibraryMeasureDefEncoder(),
        _nxMetaEncoder = new NxMetaEncoder();
  NxGenericMeasurePropertiesEncoder.using(this._nxInfoEncoder,
      this._nxLibraryMeasureDefEncoder, this._nxMetaEncoder);
  @override
  Map convert(NxGenericMeasureProperties input) {
    var model = {};

    model['qInfo'] = _nxInfoEncoder.convert(input.qInfo);
    var qMeasure = input.qMeasure;
    if (qMeasure != null) {
      model['qMeasure'] = _nxLibraryMeasureDefEncoder.convert(qMeasure);
    }
    model['qMetaDef'] = _nxMetaEncoder.convert(input.qMetaDef);

    return model;
  }
}
