part of 'number_series_bloc.dart';

@immutable
abstract class NumberSeriesState {}

class NumberSeriesInitial extends NumberSeriesState {}

class ResultState extends NumberSeriesState {
  final String result;

  ResultState(this.result);
}
