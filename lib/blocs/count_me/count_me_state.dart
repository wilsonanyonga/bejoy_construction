part of 'count_me_bloc.dart';

abstract class CountMeState extends Equatable {
  const CountMeState();

  @override
  List<Object> get props => [];
}

class CountMeInitial extends CountMeState {
  // final List<CountLol> countState;

  // const CountMeInitial(this.countState);

  // @override
  // List<Object> get props => [countState];
}

class CountMeLoaded extends CountMeState {
  // List<CountLol> countState;

  List<CountLol> countState = <CountLol>[];

  CountMeLoaded({required this.countState});

  @override
  List<Object> get props => [countState];
}

class CountMeAdd extends CountMeState {
  final List<CountLol> countState;

  const CountMeAdd({required this.countState});

  @override
  List<Object> get props => [countState];
}

class CountMeSub extends CountMeState {}
