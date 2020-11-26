import 'package:covid_dashboard/src/models/details_arguments.dart';
import 'package:covid_dashboard/src/ui/widgets/line_chart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  static final String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final DetailsArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            // fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: LineChart(
        data: args.chartData,
        animate: true,
      ),
    );
  }
}
