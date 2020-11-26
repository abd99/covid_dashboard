import 'package:covid_dashboard/src/models/state_test_model.dart';
import 'package:covid_dashboard/src/models/stats_model.dart';

class DetailsArguments {
  final Statewise state;
  final List<double> chartData;
  final StateTestData stateTestData;

  DetailsArguments(this.state, this.chartData, this.stateTestData);
}
