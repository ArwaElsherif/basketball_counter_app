import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';


class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void incrementA(int value) => emit(state.copyWith(a: state.a + value));
  void incrementB(int value) => emit(state.copyWith(b: state.b + value));
   void reset() => emit(const CounterState(a: 0, b: 0));

}