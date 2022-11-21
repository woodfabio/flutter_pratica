
import 'package:flutter_app/home/home_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, int> {
  
  HomeBloc() : super (0) {
    on<AddCounter>(incrementCounter);
    on<MinusCounter>(decrementCounter);
  }

  void incrementCounter(event, emitter) => emitter(state + 1);
  void decrementCounter(event, emitter) => emitter(state - 1);

}