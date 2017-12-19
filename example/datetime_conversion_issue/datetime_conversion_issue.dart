library dygraphs_dart_example;

import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';

main() {
  Element div = (querySelector('#graphdiv'));
  Option opt = new Option();

  List y = [
    [new DateTime(2015), 15],
    [new DateTime(2016), 20],
    [new DateTime(2017), 35],
    [new DateTime(2018), 39],
  ];
  new Dygraph(div, y, opt);

  List y2 = [
    [2015, 15],
    [2016, 20],
    [2017, 35],
    [2018, 39],
  ];
  //new Dygraph(div, y2, opt);
}
