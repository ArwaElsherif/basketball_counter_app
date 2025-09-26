import 'package:basketball_counter_app/Cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'points counter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Team A
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(fontSize: 32),
                  ),
                  BlocSelector<CounterCubit, CounterState, int>(
                    selector: (state) => state.a,
                    builder: (context, a) {
                      return Text(
                        "$a",
                        style: const TextStyle(fontSize: 150),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementA(1),
                    child: const Text("Add 1 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementA(2),
                    child: const Text("Add 2 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementA(3),
                    child: const Text("Add 3 Point"),
                  ),
                ],
              ),

              const SizedBox(
                height: 450,
                child: VerticalDivider(
                    width: 50, color: Colors.grey, thickness: 1),
              ),

              // Team B
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(fontSize: 32),
                  ),
                  BlocSelector<CounterCubit, CounterState, int>(
                    selector: (state) => state.b,
                    builder: (context, b) {
                      return Text(
                        "$b",
                        style: const TextStyle(fontSize: 150),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementB(1),
                    child: const Text("Add 1 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementB(2),
                    child: const Text("Add 2 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().incrementB(3),
                    child: const Text("Add 3 Point"),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 42),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                onPressed: () => context.read<CounterCubit>().reset(),
                child: const Text(
                  "Reset",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
