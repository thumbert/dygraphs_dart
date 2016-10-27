// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library dygraphs_dart_example;

import 'dart:math';
import 'dart:html';
import 'package:dygraphs_dart/dygraphs_dart.dart';

List<List<num>> getData(int noSeries, int noObs) {
  Random r = new Random();
  List<List<num>> res = new List.generate(noObs, (i) => [i]);
  res.first.addAll(new List.generate(noSeries, (i) => r.nextDouble() - 0.5));

  for (int i=1; i<noObs; i++) {
    for (int j=0; j<noSeries; j++) {
      res[i].add(res[i-1][j+1] + r.nextDouble() - 0.5);
    }
  }

  return res;
}


main() {
  /// generate 30 series with 200 points
  List data = getData(30, 200);

  Option opt = new Option(
      animatedZooms: true,
      highlightSeriesOpts: {
        'strokeWidth': 3,
        'strokeBorderWidth': 1,
        'highlightCircleSize': 5
      },
      showLabelsOnHighlight: false  //no legend at all.  I want some legend!
  );

  new Dygraph(querySelector('#graphdiv'),
      data,
      opt);
}
