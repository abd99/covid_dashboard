import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid_dashboard/src/models/state_test_model.dart';
import 'package:flutter/material.dart';

class StackedLineChart extends StatelessWidget {
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
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Tests, int>> _parseData(
      StateTestData stateTestData) {
    print('Tested length: ${stateTestData.tested.length}');

    print('Positive length: ${stateTestData.positive.length}');
    final positiveData = List.generate((stateTestData.positive.length),
        (index) => Tests(index, stateTestData.positive[index]));

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

    return [
      charts.Series<Tests, int>(
        id: 'Positive',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        areaColorFn: (_, __) => charts.MaterialPalette.red.shadeDefault.lighter,
        domainFn: (Tests tests, _) => tests.index,
        measureFn: (Tests tests, _) => tests.value,
        data: positiveData,
        labelAccessorFn: (Tests tests, _) => 'Positive cases',
      ),
      charts.Series<Tests, int>(
        id: 'Tested',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
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

class Tests {
  final int index;
  final int value;

  Tests(this.index, this.value);
}
