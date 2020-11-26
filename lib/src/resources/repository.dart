import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/resources/api_provider.dart';

class Repository {
  final covidApiProvider = CovidAPIProvider();

  Future<StatsModel> fetchAllData() => covidApiProvider.fetchAllData();

  fetchStatesDailyData() async {
    return covidApiProvider.fetchStatesDailyData();
  }

  fetchTestData() async {
    return covidApiProvider.fetchTestData();
  }
}
