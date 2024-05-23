import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/switch_bloc.dart';
import 'bloc/switch_event.dart';
import 'bloc/switch_state.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notification'),
              BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
                return Switch(value:state.isSwitch, onChanged: (newValue) {
                  context.read<SwitchBloc>().add(EnableChange());
                },);
              })
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 200,
            color: Colors.red.withOpacity(.2),
          ),
          SizedBox(height: 50),
          BlocBuilder<SwitchBloc,SwitchState>(builder: (context,state){
            return Slider(value: state.slider, onChanged:(newValue){
              context.read<SwitchBloc>().add(SliderChange (slider:newValue));
            });
          })
        ],
      ),
    );
  }
}
