part of 'stats_bloc.dart';

abstract class StatsEvent extends Equatable {
  const StatsEvent();

  @override
  List<Object> get props => [];
}

class GetStats extends StatsEvent {
  @override
  List<Object> get props => [];
}

// class GetDetails extends StatsEvent {
//   final List<double> chartData;
//   final Statewise state;
//   GetDetails({this.state, this.chartData});
//   @override
//   List<Object> get props => [chartData];
// }
