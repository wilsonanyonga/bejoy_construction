part of 'stock_update_bloc.dart';

abstract class StockUpdateState extends Equatable {
  const StockUpdateState();
  
  @override
  List<Object> get props => [];
}

class StockUpdateInitial extends StockUpdateState {}
