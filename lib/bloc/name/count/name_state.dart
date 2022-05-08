part of 'name_bloc.dart';

class NameState {
  const NameState();

  @override
  List<Object> get props => [];
}

class NameInitialState extends NameState {}

class NameChangeState extends NameState {
  final String name;

  const NameChangeState({required this.name});

  @override
  List<Object> get props => [name];
}

class ErrorState extends NameState {}
