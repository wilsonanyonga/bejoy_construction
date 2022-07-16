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

  final List<DatumProject> dataP;
  final int statusP;
  // var amount = [] ;

  const StockHomePageState(this.data, this.status, this.dataP, this.statusP);
  @override
  // TODO: implement props
  List<Object> get props => [data, status, dataP, statusP];
}

// updating state for projects menu
class ProjectsPageState extends StockUpdateState {
  final List<DatumProject> data;
  final int status;
  // var amount = [] ;

  const ProjectsPageState(this.data, this.status);
  @override
  // TODO: implement props
  List<Object> get props => [data, status];
}
