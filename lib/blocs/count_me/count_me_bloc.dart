import 'package:bejoy_construction/models/counter.dart';
import 'package:bejoy_construction/models/data_one.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'count_me_event.dart';
part 'count_me_state.dart';

class CountMeBloc extends Bloc<CountMeEvent, CountMeState> {
  CountMeBloc() : super(CountMeInitial()) {
    on<LoadCounter>((event, emit) {
      // TODO: implement event handler
      // final state = this.state as CountMeInitial;
      List<CountLol> stat = <CountLol>[];
      // stat[0] = CountLol(count: 1);
      stat[0].count = 0;
      emit(CountMeLoaded(countState: stat));
    });

    on<AddCounter>((event, emit) {
      // TODO: implement event handler
      // emit(CountMeInitial(count: state.count));
      if (state is CountMeAdd) {
        final state = this.state as CountMeAdd;
        var num = state.countState;
        // num.add(CountLol(count: 1));
        num[0].count = num[0].count + 1;
        emit(CountMeAdd(countState: num));
        // emit(CountMeAdd(Counter(count: state.count.count + 1)));
      }
    });

    on<RedCounter>((event, emit) {
      // TODO: implement event handler
      if (state is CountMeSub) {
        final state = this.state as CountMeAdd;
        var num = state.countState;
        // num.add(CountLol(count: 1));
        num[0].count = num[0].count - 1;
        emit(CountMeAdd(countState: num));
        // emit(CountMeAdd(Counter(count: state.count.count + 1)));
      }
    });
  }
}
