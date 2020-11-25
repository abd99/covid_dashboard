import 'package:flutter/material.dart';

class StateCard extends StatelessWidget {
  const StateCard({
    Key key,
    @required this.stateName,
    @required this.confirmedNumber,
    @required this.activeNumber,
    @required this.recoveredNumber,
    @required this.deceasedNumber,
  }) : super(key: key);

  final String stateName;
  final String confirmedNumber;
  final String activeNumber;
  final String recoveredNumber;
  final String deceasedNumber;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$stateName',
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
      ),
    );
  }
}
