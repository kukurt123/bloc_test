import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  var _count = 0;

  CounterBloc() : super(CounterInitialState(count: 0)) {
    on<CounterPreLoadEvent>(_initialized);
    on<CounterIncrementEvent>(_increment);
    on<CounterDecrementEvent>(_decrement);
  }

  _initialized(event, emit) async {
    emit(CounterInitialState(count: 0));
    await Future.delayed(Duration(seconds: 3), (() {
      if (_count == 0) emit(CounterInitialState(count: 1));
    }));
  }

  _decrement(CounterDecrementEvent event, Emitter<CounterState> emit) {
    _count = _count - 1;
    emit(CounterDecrementState(count: _count));
  }

  _increment(CounterIncrementEvent event, Emitter<CounterState> emit) {
    _count = _count + 1;
    emit(CounterIncrementState(count: _count));
  }

  @override
  dispose() {
    print('disposing..');
  }
}
