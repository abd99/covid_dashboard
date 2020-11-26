import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class LineChart extends StatelessWidget {
  // final List<charts.Series> seriesList;
  final List<double> data;
  final bool animate;

  LineChart(
    this.data, {
    this.animate,
  });

  @override
  Widget build(BuildContext context) {
    final List<charts.Series> seriesList = parseData(data);

    return charts.LineChart(
      seriesList,
      defaultRenderer: charts.LineRendererConfig(
        includeArea: true,
        stacked: true,
      ),
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  List<charts.Series<Cases, int>> parseData(List<double> data) {
    List<Cases> parsedData = List.generate(
        data.length, (index) => Cases(index, data[index].floor()));

    return [
      charts.Series<Cases, int>(
          id: 'Cases',
          // colorFn specifies that the line will be red.
          colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter,
          // areaColorFn specifies that the area skirt will be light red.
          areaColorFn: (_, __) =>
              charts.MaterialPalette.red.shadeDefault.lighter,
          domainFn: (Cases cases, _) => cases.day,
          measureFn: (Cases cases, _) => cases.cases,
          data: parsedData,
          labelAccessorFn: (Cases row, _) => 'Confirmed cases'),
    ];
  }
}

/// Sample linear data type.
class Cases {
  final int day;
  final int cases;

  Cases(this.day, this.cases);
}
