part of 'stock_update_bloc.dart';

abstract class StockUpdateState extends Equatable {
  const StockUpdateState();

  // @override
  // List<Object> get props => [];
}

class StockUpdateLoadingInitial extends StockUpdateState {
  @override
  List<Object> get props => [];
}

class StockHomePageState extends StockUpdateState {
  final List<Datum> data;
  final int status;
  // var amount = [] ;

  const StockHomePageState(this.data, this.status);
  @override
  // TODO: implement props
  List<Object> get props => [data, status];
}
