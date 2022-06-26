import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stock_update_event.dart';
part 'stock_update_state.dart';

class StockUpdateBloc extends Bloc<StockUpdateEvent, StockUpdateState> {
  StockUpdateBloc() : super(StockUpdateInitial()) {
    on<StockUpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
