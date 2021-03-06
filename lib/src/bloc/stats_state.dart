part of 'stats_bloc.dart';

abstract class StatsState extends Equatable {
  const StatsState();

  @override
  List<Object> get props => [];
}

class StatsInitial extends StatsState {
  const StatsInitial();
  @override
  List<Object> get props => [];
}

class StatsLoading extends StatsState {
  const StatsLoading();
  @override
  List<Object> get props => [];
}

class StatsLoaded extends StatsState {
  final StatsModel stats;
  final List stateDailyData;
  final TestModel testData;
  const StatsLoaded(this.stats, this.stateDailyData, this.testData);
  @override
  List<Object> get props => [stats];
}

class StatsError extends StatsState {
  final String message;
  const StatsError(this.message);
  @override
  List<Object> get props => [message];
}
