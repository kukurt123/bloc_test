part of 'counter_bloc.dart';

class CounterState {
  const CounterState();

  @override
  List<Object> get props => [];
}

class initialState extends CounterState {}

class incrementState extends CounterState {
  final int count;

  const incrementState({required this.count});
}

class decrementState extends CounterState {}

class errorState extends CounterState {}
