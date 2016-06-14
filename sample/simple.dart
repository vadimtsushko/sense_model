import 'package:sense_model/models.dart';

main() {
  var measure = new NxMeasure()
    ..qDef = (new NxInlineMeasureDef()
      ..qDef = 'Sum(Expression1)'
      ..qLabel = 'Sales amount')
    ..qCalcCond = (new NxValueExpr()..qv = 'IsNull(Only(City)) == 0');
}
