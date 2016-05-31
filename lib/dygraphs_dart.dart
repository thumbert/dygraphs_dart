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
  external Dygraph(Element div, String data, Option option);
}

@anonymous
@JS()
class Option {
  external factory Option({
    String title,
    String xlabel,
    String ylabel,
    bool showRangeSelector
  });
  external String get title;
  external set title(String v);
  external String get xlabel;
  external set xlabel(String v);
  external String get ylabel;
  external set ylabel(String v);
  external bool get showRangeSelector;
  external set showRangeSelector(bool v);
}


//export 'src/dygraphs_dart_base.dart';

// TODO: Export any libraries intended for clients of this package.
