part of 'stock_update_bloc.dart';

abstract class StockUpdateEvent extends Equatable {
  const StockUpdateEvent();
  @override
  List<Object> get props => [];
}

class LoadApiEvent extends StockUpdateEvent {
  // @override
  // List<Object> get props => [];

  // @override
  // ignore: todo
  // // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();

}

class LoadHiveInitial extends StockUpdateEvent {
  // @override
  // List<Object> get props => [];
}

class LoadProjects extends StockUpdateEvent {
  // @override
  // List<Object> get props => [];
}
