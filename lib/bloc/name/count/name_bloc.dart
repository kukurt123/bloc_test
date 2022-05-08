import 'package:flutter_bloc/flutter_bloc.dart';
part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  var _count = 0;

  NameBloc() : super(NameInitialState()) {
    on<NameChangeEvent>(_changeName);
  }

  _changeName(NameChangeEvent event, Emitter<NameState> emit) {
    _count = _count - 1;
    emit(NameChangeState(name: event.name));
  }

  @override
  dispose() {
    print('disposing..');
  }
}
