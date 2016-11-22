// Copyright (c) 2016, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

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
  /// The possible options for a dygraph
  /// [customBars] When set, parse each CSV cell as "low;middle;high". Error
  ///    bars will be drawn for each point between low and high, with the
  ///    series itself going through middle.
  /// [hideOverlayOnMouseOut] Whether to hide the legend when the mouse leaves
  ///    the chart area.
  /// [highlightCircleSize] The size in pixels of the dot drawn over highlighted
  ///    points.
  /// [legend] When to display the legend. By default, it only appears when a
  ///    user mouses over the chart. Set it to "always" to always display a
  ///    legend of some sort. When set to "follow", legend follows highlighted
  ///    points.
  /// [rollPeriod] the number of points over which to average the data
  /// [showLabelsOnHighlight] Whether to show the legend upon mouseover.
  /// [showRoller] the rolling average text box is shown in the bottom left corner
  /// [valueRange] Explicitly set the vertical range of the graph to [low, high].
  ///    This may be set on a per-axis basis to define each y-axis separately.
  ///    If either limit is unspecified, it will be calculated automatically
  ///    (e.g. [null, 30] to automatically calculate just the lower bound)
  /// [width] width, in px of the chart.  If the container has been explicitly
  ///    sized, it will be ignored
  /// [xAxisHeight] Height, in pixels, of the x-axis. If not set explicitly,
  ///    this is computed based on axisLabelFontSize and axisTickSize.
  /// [xRangePad] Add the specified amount of extra space (in pixels) around
  ///    the X-axis value range to ensure points at the edges remain visible.
  external factory Option(
      {bool animatedZooms,
      bool customBars,
      bool drawGrid,
      List<String> labels,
      String legend,
      num height,
      bool hideOverlayOnMouseOut,
      num highlightCircleSize,
      num highlightSeriesBackgroundAlpha,
      HighlightSeriesOpts highlightSeriesOpts,
      InteractionModel interactionModel,
      num rollPeriod,
      bool showLabelsOnHighlight,
      bool showRangeSelector,
      bool showRoller,
      bool stackedGraph,
      num strokeBorderWidth,
      num strokeWidth,
      String title,
      List<num> valueRange,
      num width,
      int xAxisHeight,
      String xlabel,
      num xRangePad,
      int yAxisHeight,
      String ylabel,
      num yRangePad});
  external bool get animatedZooms;
  external set animatedZooms(bool v);
  external bool get customBars;
  external set customBars(bool v);
  external bool get drawGrid;
  external set drawGrid(bool v);
  external List<String> get labels;
  external set labels(List<String> v);
  external num get height;
  external set height(num v);
  external bool get hideOverlayOnMouseOut;
  external set hideOverlayOnMouseOut(bool v);
  external num get highlightCircleSize;
  external set highlightCircleSize(num v);
  external num get highlightSeriesBackgroundAlpha;
  external set highlightSeriesBackgroundAlpha(num v);
  external HighlightSeriesOpts get highlightSeriesOpts;
  external set highlightSeriesOpts(HighlightSeriesOpts v);
  external InteractionModel get interactionModel;
  external set interactionModel(InteractionModel v);
  external String get legend;
  external set legend(String v);
  external num get rollPeriod;
  external set rollPeriod(num v);
  external bool get showRangeSelector;
  external set showRangeSelector(bool v);
  external bool get stackedGraph;
  external set stackedGraph(bool v);
  external bool get showLabelsOnHighlight;
  external set showLabelsOnHighlight(bool v);
  external bool get showRoller;
  external set showRoller(bool v);
  external num get strokeBorderWidth;
  external set strokeBorderWidth(num v);
  external num get strokeWidth;
  external set strokeWidth(num v);
  external String get title;
  external set title(String v);
  external List<num> get valueRange;
  external set valueRange(List<num> v);
  external num get width;
  external set width(num v);
  external int get xAxisHeight;
  external set xAxisHeight(int v);
  external String get xlabel;
  external set xlabel(String v);
  external num get xRangePad;
  external set xRangePad(int v);
  external int get yAxisHeight;
  external set yAxisHeight(int v);
  external String get ylabel;
  external set ylabel(String v);
  external num get yRangePad;
  external set yRangePad(int v);
}

@anonymous
@JS()
class HighlightSeriesOpts {
  /// Customization of series highlighting.
  /// [strokeBorderWidth] the size of empty border around the series highlighted
  /// [strokeWidth] the thickness of the highlighted line
  ///
  external factory HighlightSeriesOpts(
      {num highlightCircleSize,
      num pointSize,
      num strokeBorderWidth,
      num strokeWidth});
  external num get highlightCircleSize;
  external set highlightCircleSize(num v);
  external num get pointSize;
  external set pointSize(num v);
  external num get strokeBorderWidth;
  external set strokeBorderWidth(num v);
  external num get strokeWidth;
  external set strokeWidth(num v);
}

@anonymous
@JS()
class InteractionModel {
  external factory InteractionModel({
    Function mouseDown,
    Function mouseMove,
    Function mouseUp,
    Function click,
    Function dblClick,
    Function mouseWheel
  });
  external Function get mouseDown;
  external set mouseDown(Function v);
  external Function get mouseMove;
  external set mouseMove(Function v);
  external Function get mouseUp;
  external set mouseUp(Function v);
  external Function get click;
  external set click(Function v);
  external Function get dblClick;
  external set dblClick(Function v);
  external Function get mouseWheel;
  external set mouseWheel(Function v);
}