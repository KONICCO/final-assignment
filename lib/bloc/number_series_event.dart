part of 'number_series_bloc.dart';

@immutable
abstract class NumberSeriesEvent {}

class GenerateSeriesEvent extends NumberSeriesEvent {
  final int n;
  final int type;
  GenerateSeriesEvent(this.n ,this.type);
}

