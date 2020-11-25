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
          } else if (state is StatsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is StatsLoaded) {
            return ListView.builder(
              itemCount: state.stats.statewise.length,
              itemBuilder: (context, index) {
                Statewise currentState = state.stats.statewise[index];
                String stateName = currentState.state;
                String confirmedNumber = currentState.confirmed;
                String activeNumber = currentState.active;
                String recoveredNumber = currentState.recovered;
                String deceasedNumber = currentState.deaths;
                return StateCard(
                    stateName: stateName,
                    confirmedNumber: confirmedNumber,
                    activeNumber: activeNumber,
                    recoveredNumber: recoveredNumber,
                    deceasedNumber: deceasedNumber);
              },
            );
          } else if (state is StateError) {
            return Center(
              child: Text('Falied to load Data'),
            );
          }
        },
      ),
    );
  }
}
