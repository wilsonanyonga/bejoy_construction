part of 'count_me_bloc.dart';

abstract class CountMeEvent extends Equatable {
  const CountMeEvent();

  @override
  List<Object> get props => [];
}

class LoadCounter extends CountMeEvent {
  final List<CountLol> countEvents;
  // <CountLol>[]
  const LoadCounter({required this.countEvents});

  @override
  List<Object> get props => [countEvents];
}

class AddCounter extends CountMeEvent {
  final CountLol countEvent;

  const AddCounter({required this.countEvent});

  @override
  List<Object> get props => [countEvent];
}

class RedCounter extends CountMeEvent {
  final CountLol countEvent;

  const RedCounter(this.countEvent);

  @override
  List<Object> get props => [countEvent];
}
