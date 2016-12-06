// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-12-06 16:43:12.078728

library sense_model.src.models.app_config;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'app_config_item.dart';
import 'doc_list_entry.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class AppConfig {
  /// Qlik Sense host
  @Serialize.field('host')
  String host;

  /// App name
  @Serialize.field('name')
  String name;
  @Serialize.field('lang', optional: true)
  String lang;

  /// Фильтр по умолчанию на основе системной даты
  @Serialize.field('useCurrentDate', optional: true)
  bool useCurrentDate;

  /// Год для фильтра по умолчанию
  @Serialize.field('currentYear', optional: true)
  int currentYear;

  /// Порт сервера Sense
  @Serialize.field('port', optional: true)
  int port;
  @Serialize.field('entryPoints', optional: true)
  List<AppConfigItem> entryPoints;
  @Serialize.field('apps')
  List<DocListEntry> apps;

  /// Месяц для фильтра по умолчанию
  @Serialize.field('currentMonth', optional: true)
  int currentMonth;
}
