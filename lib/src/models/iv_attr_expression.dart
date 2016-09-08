// Generated by Dogma Dart. DO NOT MODIFY!

library sense_model.src.models.iv_attr_expression;

//---------------------------------------------------------------------
// Imports
//---------------------------------------------------------------------

import 'package:dogma_convert/serialize.dart';
import 'iv_expression_param.dart';

//---------------------------------------------------------------------
// Library contents
//---------------------------------------------------------------------

class IvAttrExpression {
  /// Код
  @Serialize.field('expression')
  String expression;

  /// Первый параметр для выражения - шаблона
  @Serialize.field('param1', optional: true)
  String param1;

  /// Список параметров для выражения - шаблона
  @Serialize.field('params', optional: true)
  List<IvExpressionParam> params;

  /// Статическая ли это выражение
  @Serialize.field('inPlace', optional: true)
  bool inPlace;

  /// Статическая ли это выражение
  @Serialize.field('isStatic', optional: true)
  bool isStatic;
}
