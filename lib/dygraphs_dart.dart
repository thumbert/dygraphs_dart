// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Support for doing something awesome.
///
/// More dartdocs go here.
///
///

@JS()
library dygraphs_dart;

import 'dart:html';
import "package:js/js.dart";

@JS()
class Dygraph {
  /// [data] can be a list or a string.  If it is a string, it needs
  /// to be formatted like this 'timestamp,value1,value2\n', first row
  /// can be column names.  See http://dygraphs.com/data.html
  external Dygraph(Element div, dynamic data, Option option);
}

@anonymous
@JS()
class Option {
  external factory Option({
    String title,
    String xlabel,
    String ylabel,
    List<String> labels,
    bool animatedZooms,
    bool showRangeSelector
  });
  external String get title;
  external set title(String v);
  external String get xlabel;
  external set xlabel(String v);
  external String get ylabel;
  external set ylabel(String v);
  external List<String> get labels;
  external set labels(List<String> v);
  external bool get animatedZooms;
  external set animatedZooms(bool v);
  external bool get showRangeSelector;
  external set showRangeSelector(bool v);
}


//export 'src/dygraphs_dart_base.dart';

