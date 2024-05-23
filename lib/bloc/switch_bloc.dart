import 'package:bloc/bloc.dart';
import 'package:multiple_states/bloc/switch_event.dart';
import 'package:multiple_states/bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableChange>(enable);
    on<SliderChange>(slide);
  }

  void enable(EnableChange event, Emitter<SwitchState> emit){
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void slide(SliderChange event,Emitter<SwitchState> emit){
    emit(state.copyWith(slider: event.slider));
  }
}
