import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid_dashboard/src/models/state_test_model.dart';
import 'package:flutter/material.dart';

class StackedLineChart extends StatelessWidget {
  // final List<charts.Series> seriesList;
  final bool animate;
  final StateTestData stateTestData;

  StackedLineChart(this.stateTestData, {this.animate});

  @override
  Widget build(BuildContext context) {
    final List<charts.Series> seriesList = _parseData(stateTestData);
    return charts.LineChart(
      seriesList,
      defaultRenderer:
          charts.LineRendererConfig(includeArea: true, stacked: true),
      animate: animate,
      // behaviors: [
      //   charts.DatumLegend(
      //     outsideJustification: charts.OutsideJustification.endDrawArea,
      //     horizontalFirst: false,
      //     desiredMaxRows: 2,
      //     cellPadding: EdgeInsets.only(
      //       right: 4.0,
      //       bottom: 8.0,
      //     ),
      //   )
      // ],
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Tests, int>> _parseData(
      StateTestData stateTestData) {
    print('Tested length: ${stateTestData.tested.length}');

    print('Positive length: ${stateTestData.positive.length}');
    final positiveData = List.generate((stateTestData.positive.length),
        (index) => Tests(index, stateTestData.positive[index]));

    // final testedData = List.generate((stateTestData.tested.length / 2).floor(),
    //     (index) => Tests(index, stateTestData.tested[index]));

    List<Tests> testedData = [];

    if (stateTestData.tested.length >= (2 * stateTestData.positive.length)) {
      for (int index = 0;
          testedData.length <= positiveData.length;
          index += 2) {
        testedData.add(Tests(index, stateTestData.tested[index]));
      }
    } else {
      for (int index = 0; index < positiveData.length; index++) {
        testedData.add(Tests(index, stateTestData.tested[index]));
      }
    }

    // int index = 0;
    // while (testedData.length <= positiveData.length) {
    //   testedData.add(Tests(index, stateTestData.tested[index]));
    // }

    return [
      charts.Series<Tests, int>(
        id: 'Positive',
        // colorFn specifies that the line will be red.
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        // areaColorFn specifies that the area skirt will be light red.
        areaColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter,
        domainFn: (Tests tests, _) => tests.index,
        measureFn: (Tests tests, _) => tests.value,
        data: positiveData,
        labelAccessorFn: (Tests tests, _) => 'Positive cases',
      ),
      charts.Series<Tests, int>(
        id: 'Tested',
        // colorFn specifies that the line will be blue.
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        // areaColorFn specifies that the area skirt will be light blue.
        areaColorFn: (_, __) =>
            charts.MaterialPalette.blue.shadeDefault.lighter,
        domainFn: (Tests sales, _) => sales.index,
        measureFn: (Tests sales, _) => sales.value,
        data: testedData,
        labelAccessorFn: (Tests tests, _) => 'Tests performed',
      ),
    ];
  }
}

/// Sample linear data type.
class Tests {
  final int index;
  final int value;

  Tests(this.index, this.value);
}
