part of 'count_me_bloc.dart';

abstract class CountMeState extends Equatable {
  const CountMeState();

  @override
  List<Object> get props => [];
}

class CountMeInitial extends CountMeState {
  final List<CountLol> countState1;

  const CountMeInitial({required this.countState1});

  @override
  List<Object> get props => [countState1];
}

class CountMeLoaded extends CountMeState {
  final List<CountLol> countState2;

  // List<CountLol> countState = <CountLol>[];

  const CountMeLoaded({required this.countState2});

  @override
  List<Object> get props => [countState2[0].count];
}

class CountMeAdd extends CountMeState {
  final List<CountLol> countState3;

  const CountMeAdd({required this.countState3});

  @override
  List<Object> get props => [countState3];
}

class CountMeSub extends CountMeState {}
