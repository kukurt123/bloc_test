part of 'name_bloc.dart';

abstract class NameEvent {
  const NameEvent();

  @override
  List<Object> get props => [];
}

class NameChangeEvent extends NameEvent {
  final String name;
  const NameChangeEvent({required this.name});

  @override
  List<Object> get props => [name];
}

class ErrorEvent extends NameEvent {}
