// import 'dart:html';

import 'package:bejoy_construction/models/hive/project_display.dart';
import 'package:bejoy_construction/models/home_page.dart';
import 'package:bejoy_construction/models/home_page/datum.dart';
import 'package:bejoy_construction/models/projectData/data.dart';
import 'package:bejoy_construction/utils/dio_client.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'stock_update_event.dart';
part 'stock_update_state.dart';

late Box box;

class StockUpdateBloc extends Bloc<StockUpdateEvent, StockUpdateState> {
  final DioClient _client = DioClient();

  StockUpdateBloc(DioClient of) : super(StockUpdateLoadingInitial()) {
    on<StockUpdateEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<LoadApiEvent>((event, emit) async {
      // ProjectDisplay projId2 = box.get('mainProject');
      // if (kDebugMode) {
      //   print("project lol is done2");
      //   print(projId2.myId);
      // }

      final activity = await _client.getUser(id: '1');
      // final activity = await _client.getUser(id: projId2.myId.toString());

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

    // loading projects in progress
    on<LoadProjects>((event, emit) async {
      final projects = await _client.getProject();

      emit(ProjectsPageState(projects!.data, projects.status));
    });

    on<LoadHiveInitial>((event, emit) async {
      await Hive.initFlutter();

      box = await Hive.openBox('box');

      Hive.registerAdapter(ProjectDisplayAdapter());
      box.put('mainProject', ProjectDisplay(myId: 1));
      ProjectDisplay projId2 = box.get('mainProject');
      if (kDebugMode) {
        print("lol is done");
        print(projId2.myId);
      }
    });
  }
}
