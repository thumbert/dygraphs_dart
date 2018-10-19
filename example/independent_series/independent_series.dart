library dygraphs_dart_example;

import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';

main() {
  Element div = (querySelector('#graphdiv'));

  List x = [
    [1, null, 3],
    [2, 2, null],
    [3, null, 7],
    [4, 5, null],
    [5, null, 5],
    [6, 4, null]
  ];

  /// DateTime are not converted correctly.  Need to construct a String.
  List y = [
    [new DateTime(2015).toIso8601String(), 15],
    [new DateTime(2016).toIso8601String(), 25],
    [new DateTime(2017).toIso8601String(), 35],
    [new DateTime(2018).toIso8601String(), 39],
  ];

  Option opt = new Option(
    title: 'Missing data',
    ylabel: '',
    connectSeparatedPoints: true,
    xRangePad: 3,
    yRangePad: 3
  );
  new Dygraph(div, x, opt);
}
