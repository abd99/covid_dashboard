import 'package:covid_dashboard/src/bloc/stats_bloc.dart';
import 'package:covid_dashboard/src/models/details_arguments.dart';
import 'package:covid_dashboard/src/models/state_test_model.dart';
import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/ui/screens/details_page.dart';
import 'package:covid_dashboard/src/ui/widgets/state_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static final String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<StatsBloc>(context)..add(GetStats());
  }

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
      body: BlocBuilder<StatsBloc, StatsState>(
        builder: (context, state) {
          print(state);
          if (state is StatsInitial) {
            // print('Initial');
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is StatsLoading) {
            // print('Loading');
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is StatsLoaded) {
            // print('Loaded');
            final stateDailyData = state.stateDailyData;
            final stateDailyDataLength = stateDailyData.length;

            List<double> _generateConfirmedData(int index) {
              print(stateDailyDataLength);
              List<double> result = <double>[];
              for (int i = 300; i < stateDailyDataLength; i++) {
                result.add(
                  (double.parse(stateDailyData[i]
                      [state.stats.statewise[index].statecode.toLowerCase()])),
                );
              }
              return result;
            }

            List<double> _generateDetailedConfirmedData(int index) {
              print(stateDailyDataLength);
              List<double> result = <double>[];
              for (int i = 0; i < stateDailyDataLength; i++) {
                result.add(
                  (double.parse(stateDailyData[i]
                      [state.stats.statewise[index].statecode.toLowerCase()])),
                );
              }
              return result;
            }

            var testData = state.testData.statesTestedData;

            StateTestData _generateStateTestData(String stateName) {
              StateTestData data = StateTestData();
              for (int i = 0; i < testData.length; i++) {
                try {
                  if (testData[i].state == stateName) {
                    data.tested.add(int.parse(testData[i].totaltested));
                    data.positive.add(int.parse(testData[i].positive));
                  }
                } on Exception catch (e) {
                  print('invalid data from API :$e');
                }
              }
              print('Tested:- {data.tested}');
              print('Positive:- {data.positive}');
              return data;
            }

            return ListView.builder(
              itemCount: state.stats.statewise.length,
              itemBuilder: (context, index) {
                Statewise currentState = state.stats.statewise[index];
                String stateName = currentState.state;
                String confirmedNumber = currentState.confirmed;
                String activeNumber = currentState.active;
                String recoveredNumber = currentState.recovered;
                String deceasedNumber = currentState.deaths;

                if (stateName == 'State Unassigned' ||
                    stateName == 'Total' ||
                    (int.parse(confirmedNumber) == 0))
                  return SizedBox(height: 0.0);
                else {
                  return InkWell(
                    child: StateCard(
                      stateName: stateName,
                      confirmedNumber: confirmedNumber,
                      activeNumber: activeNumber,
                      recoveredNumber: recoveredNumber,
                      deceasedNumber: deceasedNumber,
                      data: _generateConfirmedData(index),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        DetailsPage.routeName,
                        arguments: DetailsArguments(
                          currentState,
                          _generateDetailedConfirmedData(index),
                          _generateStateTestData(stateName),
                        ),
                      );
                    },
                  );
                }
              },
            );
          }
          if (state is StateError) {
            return Center(
              child: Text('Falied to load Data'),
            );
          }
          print('Default');
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
