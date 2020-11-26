import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class StateCard extends StatelessWidget {
  const StateCard({
    Key key,
    @required this.stateName,
    @required this.confirmedNumber,
    @required this.activeNumber,
    @required this.recoveredNumber,
    @required this.deceasedNumber,
    @required this.data,
  }) : super(key: key);

  final String stateName;
  final String confirmedNumber;
  final String activeNumber;
  final String recoveredNumber;
  final String deceasedNumber;
  final List<double> data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      color: Colors.white,
      shadowColor: Color(0xFF26000000),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      // elevation: 18.0,
      child: Container(
        height: 127.0,
        width: 329.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stateName.length > 12
                          ? '${stateName.substring(0, 12)}...'
                          : stateName,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text('Confirmed: '),
                        Text('$confirmedNumber'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Active: '),
                        Text('$activeNumber'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Recovered: '),
                        Text('$recoveredNumber'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Deceased: '),
                        Text('$deceasedNumber'),
                      ],
                    ),
                  ],
                ),
              ),
              // Spacer(),

              Expanded(
                child: Sparkline(
                  data: data,
                  fallbackHeight: 50,
                  fallbackWidth: 400,
                  lineColor: Colors.red,
                  pointSize: 5,
                  lineWidth: 3,
                  sharpCorners: true,
                  lineGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red[500],
                      Colors.red[200],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
