// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.app_config_item;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class AppConfigItem {
  /// Наименование главной страницы (например salesdemo.html)
  @Serialize.field('docName')
  String docName;

  /// Qlik Sense host
  @Serialize.field('host')
  String host;

  /// Порт сервера Sense
  @Serialize.field('port', optional: true)
  int port;

  /// Qlik Sense application ID
  @Serialize.field('id')
  String id;
}
