import 'package:covid_dashboard/src/models/stats_model.dart';

class DetailsArguments {
  final Statewise state;
  final List<double> chartData;

  DetailsArguments(this.state, this.chartData);
}
