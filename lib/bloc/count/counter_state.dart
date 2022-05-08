part of 'counter_bloc.dart';

class CounterState {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitialState extends CounterState {
  final int count;

  const CounterInitialState({required this.count});

  @override
  List<Object> get props => [count];
}

class CounterIncrementState extends CounterState {
  final int count;

  const CounterIncrementState({required this.count});

  @override
  List<Object> get props => [count];
}

class CounterDecrementState extends CounterState {
  final int count;

  const CounterDecrementState({required this.count});

  @override
  List<Object> get props => [count];
}

class ErrorState extends CounterState {}
