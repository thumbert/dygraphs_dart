// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dygraphs_dart_example;

import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';

import '../data.dart';


main() {
  Element div = (querySelector('#graphdiv'));

  Option opt = new Option(
      title: 'Daily Temperatures in New York vs. San Francisco',
      ylabel: 'Temperature (F)',
      showRangeSelector: true);
  new Dygraph(div, data_temp(), opt);
}
