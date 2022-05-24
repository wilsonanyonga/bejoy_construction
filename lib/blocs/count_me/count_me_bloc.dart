import 'package:bejoy_construction/models/counter.dart';
import 'package:bejoy_construction/models/data_one.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'count_me_event.dart';
part 'count_me_state.dart';

class CountMeBloc extends Bloc<CountMeEvent, CountMeState> {
  CountMeBloc()
      : super(CountMeLoaded(countState2: [
          CountLol.testCount[0],
        ])) {
    on<LoadCounter>((event, emit) {
      // TODO: implement event handler
      final state = this.state as CountMeLoaded;
      // List<CountLol> stat = <CountLol>[];
      // stat[0] = CountLol(count: 1);
      // stat[0].count = 0;
      var num = state.countState2;
      // num.add(CountLol(count: 1));
      num[0].count = num[0].count + 3;
      emit(CountMeLoaded(countState2: num));
      // emit(CountMeInitial(countState: stat));
    });

    on<AddCounter>((event, emit) {
      // TODO: implement event handler
      // emit(CountMeInitial(count: state.count));
      final state = this.state;
      if (state is CountMeLoaded) {
        final state = this.state as CountMeLoaded;
        var num = state.countState2;
        var num2 = event.countEvent.count;
        // num2 = num2 + 2;
        if (kDebugMode) {
          // print('num2 is $num2 and $num');
          for (var i = 0; i < num.length; i++) {
            print('num2 is $num2 and ${num[i].count}');
          }
        }
        // num.add(CountLol(count: 1));
        num[0].count = num[0].count + num2;
        if (kDebugMode) {
          print(num[0].count);
        }
        emit(CountMeLoaded(countState2: num));
        // emit(CountMeAdd(Counter(count: state.count.count + 1)));
      }
    });

    on<RedCounter>((event, emit) {
      // TODO: implement event handler
      if (state is CountMeSub) {
        final state = this.state as CountMeAdd;
        var num = state.countState3;
        // num.add(CountLol(count: 1));
        num[0].count = num[0].count - 1;
        emit(CountMeAdd(countState3: num));
        // emit(CountMeAdd(Counter(count: state.count.count + 1)));
      }
    });
  }
}
