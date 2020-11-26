/// Simple pie chart with outside labels example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  // final List<charts.Series> seriesList;
  final bool animate;

  final int confirmed;
  final int active;
  final int recovered;
  final int deaths;

  PieChart(this.confirmed, this.active, this.recovered, this.deaths,
      {this.animate});

  @override
  Widget build(BuildContext context) {
    final List<charts.Series> seriesList =
        parseData(confirmed, active, recovered, deaths);
    return charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.ArcRendererConfig(
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.outside)
        ],
      ),
      behaviors: [
        charts.DatumLegend(
          outsideJustification: charts.OutsideJustification.endDrawArea,
          horizontalFirst: false,
          // desiredMaxRows: 2,
          cellPadding: EdgeInsets.only(
            right: 4.0,
            bottom: 8.0,
          ),
        )
      ],
    );
  }

  static List<charts.Series<Cases, String>> parseData(
      int confirmed, int active, int recovered, int deaths) {
    var pieData = [
      Cases('Active', active, Colors.blue[300]),
      Cases('Recovered', recovered, Colors.green[300]),
      Cases('Deaths', deaths, Colors.grey),
    ];

    return [
      charts.Series<Cases, String>(
        id: 'Cases',
        domainFn: (Cases cases, _) => cases.type,
        measureFn: (Cases cases, _) => cases.value,
        colorFn: (Cases cases, _) =>
            charts.ColorUtil.fromDartColor(cases.colorVal),
        data: pieData,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (Cases row, _) => '${row.value}',
      )
    ];
  }
}

/// Sample linear data type.
class Cases {
  String type;
  int value;
  Color colorVal;

  Cases(this.type, this.value, this.colorVal);
}
