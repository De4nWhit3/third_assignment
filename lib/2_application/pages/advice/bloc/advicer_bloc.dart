import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdviceRequestedEvent>((event, emit) async {
      emit(AdvicerStateLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(AdvicerStateLoaded(advice: 'some dummy advice'));
      // emit(AdvicerStateError(message: 'some dummy error'));
      print('end of adviser bloc');
    });
  }
}
