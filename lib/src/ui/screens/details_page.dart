import 'package:covid_dashboard/src/models/details_arguments.dart';
import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/ui/widgets/line_chart.dart';
import 'package:covid_dashboard/src/ui/widgets/pie_chart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  static final String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final DetailsArguments args = ModalRoute.of(context).settings.arguments;

    final Statewise state = args.state;
    final int confirmed = int.parse(state.confirmed);
    final int active = int.parse(state.active);
    final int recovered = int.parse(state.recovered);
    final int deaths = int.parse(state.deaths);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          state.state,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            // fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text(
              'Total confirmed cases',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: LineChart(
                  data: args.chartData,
                  animate: true,
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Active cases',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: PieChart(
                      confirmed,
                      active,
                      recovered,
                      deaths,
                      animate: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}