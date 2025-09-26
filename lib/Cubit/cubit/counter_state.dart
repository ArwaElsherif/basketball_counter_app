part of 'counter_cubit.dart';

@immutable
class CounterState {
  final int a;
  final int b;


  const CounterState({this.a = 0, this.b = 0});

  CounterState copyWith({int? a, int? b, int? c}) {
    return CounterState(
      a: a ?? this.a,
      b: b ?? this.b,
    );
  }
}