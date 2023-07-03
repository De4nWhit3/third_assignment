import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/advicer_bloc.dart';

class AdvicePageWrapperProvider extends StatelessWidget {
  const AdvicePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvicerBloc(),
      child: const AdvicerPage(),
    );
  }
}

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<AdvicerBloc, AdvicerState>(
              builder: (context, state) {
                if (state is AdvicerInitial) {
                  return const Text('Initial State');
                } else if (state is AdvicerStateLoading) {
                  return const Text('Loading... State');
                } else if (state is AdvicerStateLoaded) {
                  return Text(state.advice);
                } else if (state is AdvicerStateError) {
                  return Text(state.message);
                }
                return const Placeholder();
              },
            ),
          ),
          SizedBox(
            child: Center(
              child: TextButton(
                onPressed: () => BlocProvider.of<AdvicerBloc>(context)
                    .add(AdviceRequestedEvent()),
                child: const Text('Press me'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
