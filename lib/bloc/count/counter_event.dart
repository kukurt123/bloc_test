part of 'counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterDecrement extends CounterEvent {}

class CounterIncrement extends CounterEvent {}
