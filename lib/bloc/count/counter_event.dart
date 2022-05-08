part of 'counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterDecrementEvent extends CounterEvent {}

class CounterIncrementEvent extends CounterEvent {}

class CounterPreLoadEvent extends CounterEvent {}
