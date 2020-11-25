import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:covid_dashboard/src/models/stats_model.dart';
import 'package:covid_dashboard/src/resources/repository.dart';
import 'package:equatable/equatable.dart';

part 'stats_event.dart';
part 'stats_state.dart';

class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final Repository repository;
  StatsBloc(this.repository) : super(StatsInitial());

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    yield StatsLoading();

    if (event is GetStats) {
      try {
        final stats = await repository.fetchAllData();
        yield StatsLoaded(stats);
      } on Error {
        yield StatsError('Faild to fetch Data');
      }
    }
  }
}
