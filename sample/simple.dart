import 'package:sense_model/models.dart';
import 'package:sense_model/convert.dart';

main() {
  var measure = new NxMeasure()
    ..qDef = (new NxInlineMeasureDef()
      ..qDef = 'Sum(Expression1)'
      ..qLabel = 'Sales amount')
    ..qCalcCond = (new NxValueExpr()..qv = 'IsNull(Only(City)) == 0');
  var map = new NxMeasureEncoder().convert(measure);
  print(map);

  var dimension = new NxDimension()
    ..type = 'dimension'
    ..qDef = (new NxInlineDimensionDef()
      ..qFieldDefs = ['City']
      ..qFieldLabels = ['City name']);
  map = new NxDimensionEncoder().convert(dimension);
  print(map);

  var dimension1 = new NxDimension1()
    ..type = 'dimension'
    ..qDef = (new NxInlineDimensionDef()
      ..qFieldDefs = ['City']
      ..qFieldLabels = ['City name']);
  map = new NxDimension1Encoder().convert(dimension1);
  print(map);
}
