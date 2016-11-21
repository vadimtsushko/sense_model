// Generated by Dogma Dart. DO NOT MODIFY!
// 2016-11-15 11:30:01.492953

library sense_model.src.convert.selection_table_item_convert;

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

/// A [ModelDecoder] for [SelectionTableItem].
class SelectionTableItemDecoder extends Converter<Map, SelectionTableItem>
    implements ModelDecoder<SelectionTableItem> {
  @override
  SelectionTableItem create() => new SelectionTableItem();
  @override
  SelectionTableItem convert(Map input, [SelectionTableItem model]) {
    model ??= create();

    model.value = input['value'];
    model.canBeWeekly = input['canBeWeekly'];
    model.isHierarchy = input['isHierarchy'];
    model.param = input['param'];
    model.displayValue = input['displayValue'];
    return model;
  }
}

/// A [ModelEncoder] for [SelectionTableItem].
class SelectionTableItemEncoder extends Converter<SelectionTableItem, Map>
    implements ModelEncoder<SelectionTableItem> {
  @override
  Map convert(SelectionTableItem input) {
    var model = {};

    model['value'] = input.value;
    var canBeWeekly = input.canBeWeekly;
    if (canBeWeekly != null) {
      model['canBeWeekly'] = canBeWeekly;
    }
    var isHierarchy = input.isHierarchy;
    if (isHierarchy != null) {
      model['isHierarchy'] = isHierarchy;
    }
    var param = input.param;
    if (param != null) {
      model['param'] = param;
    }
    var displayValue = input.displayValue;
    if (displayValue != null) {
      model['displayValue'] = displayValue;
    }

    return model;
  }
}
