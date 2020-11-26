import 'dart:convert';

import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/models/test_model.dart';
import 'package:http/http.dart' as http;

class CovidAPIProvider {
  final _url = "https://api.covid19india.org/data.json";

  Future<StatsModel> fetchAllData() async {
    print('Fetching All......');
    http.Response response = await http.get(_url);
    print('Fetched.');
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return StatsModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  fetchStatesDailyData() async {
    http.Response response =
        await http.get('https://api.covid19india.org/states_daily.json');
    return json.decode(response.body)['states_daily'];
  }

  fetchTestData() async {
    print('Fetching test data');
    http.Response response =
        await http.get('https://api.covid19india.org/state_test_data.json');
    print('Fetched');
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return TestModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
