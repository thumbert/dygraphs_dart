// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dygraphs_dart_example;

import 'dart:math';
import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';


main() {
  Duration d1 = new Duration(days: 1);
  StringBuffer sb = new StringBuffer();
  Random rand =  new Random();
  DateTime dt = new DateTime(2011);
  for (int i=0; i<31; i++) {
    String day = '${dt.year}-${dt.month.toString().padLeft(2,'0')}-${dt.day.toString().padLeft(2,'0')}';
    sb.writeAll([day, 100*rand.nextDouble()],',');
    sb.write('\n');
    dt = dt.add(d1);
  }
  String data = sb.toString();

  Option opt = new Option(
      labels: ['Date', 'Value']);

  new Dygraph(querySelector('#graphdiv'),
      data,
      opt);
}
