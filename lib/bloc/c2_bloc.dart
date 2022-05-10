import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'c2_event.dart';
part 'c2_state.dart';

class C2Bloc extends Bloc<C2Event, C2State> {
  C2Bloc() : super(C2Initial()) {
    on<C2Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
