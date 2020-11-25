import 'package:covid_dashboard/src/bloc/stats_bloc.dart';
import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/ui/widgets/state_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  void getStats(BuildContext context) {
    final statsBloc = BlocProvider.of<StatsBloc>(context);
    statsBloc.add(GetStats());
  }

  @override
  Widget build(BuildContext context) {
    getStats(context);
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
          if (state is StatsInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is StatsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is StatsLoaded) {
            final stateDailyData = state.stateDailyData;
            final stateDailyDataLength = stateDailyData.length;

            List<double> _generateConfirmedData(int index) {
              List<double> result = <double>[];
              for (int i = stateDailyDataLength - 120;
                  i < stateDailyDataLength;
                  i++) {
                result.add(
                  (double.parse(stateDailyData[i]
                      [state.stats.statewise[index].statecode.toLowerCase()])),
                );
              }
              return result;
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

                if (stateName == 'State Unassigned')
                  return SizedBox(height: 0.0);
                else {
                  return StateCard(
                    stateName: stateName,
                    confirmedNumber: confirmedNumber,
                    activeNumber: activeNumber,
                    recoveredNumber: recoveredNumber,
                    deceasedNumber: deceasedNumber,
                    data: _generateConfirmedData(index),
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
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
