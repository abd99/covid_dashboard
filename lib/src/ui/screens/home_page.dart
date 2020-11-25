import 'package:covid_dashboard/src/ui/widgets/state_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'States',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            // fontSize: 24.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          String stateName = 'StateName';
          int confirmedNumber = 0;
          int activeNumber = 0;
          int recoveredNumber = 0;
          int deceasedNumber = 0;
          return StateCard(
              stateName: stateName,
              confirmedNumber: confirmedNumber,
              activeNumber: activeNumber,
              recoveredNumber: recoveredNumber,
              deceasedNumber: deceasedNumber);
        },
      ),
    );
  }
}
