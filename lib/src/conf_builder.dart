// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:async';

import 'package:build/build.dart';
import 'package:build/src/generate/input_set.dart';
import 'package:build/src/generate/phase.dart';
import 'package:yaml/yaml.dart';
import 'dart:convert';
import 'package:json_schema/json_schema.dart';
import 'package:path/path.dart' as path;
import 'package:logging/logging.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------
var schemaContent;

// Validates YAML and convert it to JSON
class Yaml2JsonBuilder extends Builder {
  Map schemaData;
  Logger logger;
  Yaml2JsonBuilder(this.schemaData){
      logger = new Logger('Yaml2JsonBuilder');
  }
  @override
  Future build(BuildStep buildStep) async {
    Logger.root.level = Level.WARNING;
    var input = buildStep.input;
    try {
      var content = loadYamlStream(input.stringContents, sourceUrl: new Uri.file(input.id.path));
      if (await validateSource(input, schemaData, content, logger) == false) {
        logger.severe('Validation errors found in ${input.id}');
        return;
      }
      var jsonContent = new JsonEncoder.withIndent('  ').convert(content);
      var copy = new Asset(convertedAssetId(input.id), jsonContent);
      await buildStep.writeAsString(copy);
      Logger.root.level = Level.INFO;
    } catch(err)
     {
       Logger.root.level = Level.INFO;
       logger.severe(err);
    }
  }

  @override
  List<AssetId> declareOutputs(AssetId inputId) => [convertedAssetId(inputId)];
  static void addPhases(PhaseGroup group, PackageGraph graph, Map schemaData) {
    group.newPhase().addAction(new Yaml2JsonBuilder(schemaData),
        new InputSet(graph.root.name, ['web/conf/*.yaml']));
  }
}

// Validates YAML and convert it to JSON
class ExpressionValidator extends Builder {
  Map schemaData;
  Logger logger;
  ExpressionValidator(this.schemaData){
    logger = new Logger('ExpressionValidator');
  }
  @override
  Future build(BuildStep buildStep) async {
    Logger.root.level = Level.WARNING;
    var input = buildStep.input;
    try {
      var content = JSON.decode(input.stringContents);//loadYamlStream(input.stringContents, sourceUrl: new Uri.file(input.id.path));
      if (await validateSource(input, schemaData, content, logger) == false) {
        logger.severe('Validation errors found in ${input.id}');
        return;
      }
      var copy = new Asset(input.id.changeExtension('.log'), 'OK');
      await buildStep.writeAsString(copy);
      Logger.root.level = Level.INFO;
    } catch(err)
    {
      Logger.root.level = Level.INFO;
      logger.severe(err);
    }
  }

  @override
  List<AssetId> declareOutputs(AssetId inputId) => [inputId.changeExtension('.log')];
  static void addPhases(PhaseGroup group, PackageGraph graph, Map schemaData) {
    group.newPhase().addAction(new ExpressionValidator(schemaData),
        new InputSet(graph.root.name, ['web/conf/App.variables.json']));
  }
}

AssetId convertedAssetId(AssetId inputId) => inputId.changeExtension('.json');

Future<bool> validateSource(Asset input, Map schemaMap, List<Map> data, Logger logger) async {
  var baseName = path.basenameWithoutExtension(input.id.path);
  ValidationParam validationParam = confMap[baseName];
  if (validationParam == null) {
    throw new Exception(
        'Unknown basename: $baseName. Known types: ${confMap.keys}');
  }
  if (validationParam.skipValidation) {
    return true;
  }
  schemaMap['properties']['toValidate'][r'$ref'] =
  '#/definitions/${validationParam.schema}';
  var schema = await Schema.createSchema(schemaMap);
  var validator = new Validator(schema);
  var ok = true;
  for (var toValidate in data) {
    var id = toValidate[validationParam.id];

    bool validates = validator.validate({'toValidate': toValidate});
    if (validates) {
      logger.info('Validated OK: $id');
    } else {
      logger.severe('ERROR in: $id\n ${validator.errors}');
      ok = false;
    }
  }
  return ok;
}


class ValidationParam {
  String schema;
  String id;
  bool skipValidation;
  ValidationParam({this.schema, this.id, this.skipValidation: false});
}

var confMap = <String, ValidationParam>{
  'charts': new ValidationParam(schema: 'ChartDefinition', id: 'chartId'),
  'tables': new ValidationParam(schema: 'SelectionTableData', id: 'tableId'),
  'dimensions': new ValidationParam(schema: 'IvMasterDimension', id: 'id'),
  'App.Variables': new ValidationParam(schema: 'IvMasterExpression', id: 'name'),
  'measure_type': new ValidationParam(schema: 'IvMeasureType', id: 'key'),
  'measure_family': new ValidationParam(schema: 'IvMeasureFamily', id: 'key'),
  'sense_objects': new ValidationParam(skipValidation: true),
  'list_item': new ValidationParam(schema: 'IvListItem', id: 'id'),
  'app_config': new ValidationParam(schema: 'AppConfig', id: 'key'),
};

