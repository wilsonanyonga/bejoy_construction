part of 'count_me_bloc.dart';

abstract class CountMeEvent extends Equatable {
  const CountMeEvent();

  @override
  List<Object> get props => [];
}

class LoadCounter extends CountMeEvent {
  // final CountLol countEvent;

  // const LoadCounter(this.countEvent);

  // @override
  // List<Object> get props => [countEvent];
}

class AddCounter extends CountMeEvent {
  final CountLol countEvent;

  AddCounter({required this.countEvent});

  @override
  List<Object> get props => [countEvent];
}

class RedCounter extends CountMeEvent {
  final CountLol countEvent;

  const RedCounter(this.countEvent);

  @override
  List<Object> get props => [countEvent];
}
