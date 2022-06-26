part of 'stock_update_bloc.dart';

abstract class StockUpdateState extends Equatable {
  const StockUpdateState();

  @override
  List<Object> get props => [];
}

class StockUpdateInitial extends StockUpdateState {
  // @override
  // List<Object> get props => [];
}

class StockHomePageState extends StockUpdateState {
  final String materialsName;
  final List amount;
  // var amount = [] ;

  StockHomePageState(this.materialsName, this.amount);
  @override
  // TODO: implement props
  List<Object> get props => [materialsName, amount];
}
