import 'dart:async';

import 'package:build/build.dart';
import 'package:sense_model/src/conf_builder.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:isolate';
import 'package:path/path.dart' as path;

Future main(List<String> args) async {
  var uri = Uri.parse("package:sense_model/models.json");
  var resolved = await Isolate.resolvePackageUri(uri);
  var schemaPath = path.fromUri(resolved);
  var schemaData = JSON.decode(await new File(schemaPath).readAsString());
  var graph = new PackageGraph.forThisPackage();
  var group = new PhaseGroup();
  Yaml2JsonBuilder.addPhases(group, graph, schemaData);
  ExpressionValidator.addPhases(group, graph, schemaData);
  if (args?.length == 1 && args.first == 'build') {
    build(group, deleteFilesByDefault: true);
  } else {
    watch(group, deleteFilesByDefault: true);
  }
}
