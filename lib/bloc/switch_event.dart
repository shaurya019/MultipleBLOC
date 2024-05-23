import 'package:equatable/equatable.dart';

abstract class SwitchEvent {
  SwitchEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class EnableChange extends SwitchEvent {}

class SliderChange extends SwitchEvent {
  double slider;
  SliderChange({required this.slider});
  @override
  // TODO: implement props
  List<Object?> get props => [slider];
}
