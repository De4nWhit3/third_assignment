part of 'advicer_bloc.dart';

@immutable
abstract class AdvicerEvent extends Equatable {}

class AdviceRequestedEvent extends AdvicerEvent {
  @override
  List<Object?> get props => [];
}
