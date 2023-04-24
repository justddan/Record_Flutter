import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class CounterEvent {
  int no;

  CounterEvent(this.no);
}

class IncrementEvent extends CounterEvent {
  IncrementEvent(super.no);
}

class DecrementEvent extends CounterEvent {
  DecrementEvent(super.no);
}

class KkangMyBlocCounter extends Bloc<CounterEvent, int> {
  KkangMyBlocCounter() : super(0) {
    on<IncrementEvent>(
      (event, emit) {
        emit(state + event.no);
      },
    );
    on<DecrementEvent>(
      (event, emit) {
        emit(state - event.no);
      },
    );
  }
  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print("transition....$transition");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}

class KkangBloc extends StatelessWidget {
  const KkangBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Bloc Test",
          ),
        ),
        body: BlocProvider<KkangMyBlocCounter>(
          create: (context) => KkangMyBlocCounter(),
          child: KkangBlocMyWidget(),
        ),
      ),
    );
  }
}

class KkangBlocMyWidget extends StatelessWidget {
  const KkangBlocMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final KkangMyBlocCounter counterBloc =
        BlocProvider.of<KkangMyBlocCounter>(context);
    return BlocBuilder<KkangMyBlocCounter, int>(
      builder: (context, count) {
        return Container(
          color: Colors.deepOrange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${counterBloc.state}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(IncrementEvent(2));
                  },
                  child: Text(
                    "increment",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterBloc.add(DecrementEvent(2));
                  },
                  child: Text(
                    "decrement",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
