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
  const StatsLoaded(this.stats, this.stateDailyData);
  @override
  List<Object> get props => [stats];
}

class StatsError extends StatsState {
  final String message;
  const StatsError(this.message);
  @override
  List<Object> get props => [message];
}

// class DetailsInitial extends StatsState {
//   const DetailsInitial();
//   @override
//   List<Object> get props => [];
// }

// class DetailsLoading extends StatsState {
//   const DetailsLoading();
//   @override
//   List<Object> get props => [];
// }

// class DetailsLoaded extends StatsState {
//   final Statewise state;
//   final List<double> chartData;
//   const DetailsLoaded(this.state, this.chartData);
//   @override
//   List<Object> get props => [state];
// }

// class DetailsError extends StatsState {
//   final String message;
//   const DetailsError(this.message);
//   @override
//   List<Object> get props => [message];
// }
