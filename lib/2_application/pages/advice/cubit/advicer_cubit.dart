import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(const AdvicerStateLoaded(advice: 'some dummy advice'));
    // emit(AdvicerStateError(message: 'some dummy error'));
    print('end of adviser bloc');
  }
}
