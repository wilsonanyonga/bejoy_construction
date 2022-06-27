// import 'dart:html';

import 'package:bejoy_construction/models/home_page.dart';
import 'package:bejoy_construction/models/home_page/datum.dart';
import 'package:bejoy_construction/utils/dio_client.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'stock_update_event.dart';
part 'stock_update_state.dart';

class StockUpdateBloc extends Bloc<StockUpdateEvent, StockUpdateState> {
  final DioClient _client = DioClient();

  StockUpdateBloc(DioClient of) : super(StockUpdateLoadingInitial()) {
    on<StockUpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoadApiEvent>((event, emit) async {
      final activity = await _client.getUser(id: '1');
      // mat = activity.data[materialsName];
      // var total = 0;
      // for (var i = 0; i < activity!.data.length; i++) {
      //   for (var j = 0; j < activity.data[i].materials.length; j++) {
      //     total += activity.data[i].materials[j].amount;
      //   }
      // }
      // if (kDebugMode) {
      //   print(total);
      // }
      emit(StockHomePageState(activity!.data, activity.status));
    });
  }
}
