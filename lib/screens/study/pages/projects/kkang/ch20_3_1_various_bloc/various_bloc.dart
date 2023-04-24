import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class User {
  String name;
  String address;

  User(this.name, this.address);
}

abstract class UserEvent {
  User user;

  UserEvent(this.user);
}

class CreateUserEvent extends UserEvent {
  CreateUserEvent(super.user);
}

class UpdateUserEvent extends UserEvent {
  UpdateUserEvent(super.user);
}

class UserBloc extends Bloc<UserEvent, User?> {
  UserBloc() : super(null) {
    on<CreateUserEvent>((event, emit) {
      emit(event.user);
    });
    on<UpdateUserEvent>((event, emit) {
      emit(event.user);
    });
  }
}

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

class BlocCounter extends Bloc<CounterEvent, int> {
  BlocCounter() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + event.no);
    });
    on<DecrementEvent>((event, emit) {
      emit(state - event.no);
    });
  }
}

class MyBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print("observer onTransition...$transition");
  }
}

class KkangVariousBloc extends StatelessWidget {
  const KkangVariousBloc({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc.observer = MyBlocObserver();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Various Bloc"),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<BlocCounter>(create: (context) => BlocCounter()),
            BlocProvider<UserBloc>(create: (context) => UserBloc()),
          ],
          child: KkangVariousBlocMyWidget(),
        ),
      ),
    );
  }
}

class KkangVariousBlocMyWidget extends StatelessWidget {
  const KkangVariousBlocMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final BlocCounter counterBloc = BlocProvider.of<BlocCounter>(context);
    final UserBloc userBloc = BlocProvider.of<UserBloc>(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<BlocCounter, int>(
          listenWhen: (previous, current) {
            return true;
          },
          listener: (context, state) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("$state"),
                backgroundColor: Colors.red,
              ),
            );
          },
        ),
        BlocListener<UserBloc, User?>(
          listener: (context, user) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(user!.name),
                backgroundColor: Colors.blue,
              ),
            );
          },
        )
      ],
      child: Container(
        color: Colors.deepOrange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<BlocCounter, int>(
                buildWhen: (previous, current) {
                  return true;
                },
                builder: (context, count) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "${counterBloc.state}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bloc : $count",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          counterBloc.add(IncrementEvent(2));
                        },
                        child: Text("increment"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          counterBloc.add(DecrementEvent(2));
                        },
                        child: Text("decrement"),
                      ),
                    ],
                  );
                },
              ),
              BlocBuilder<UserBloc, User?>(
                builder: (context, user) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "user ${user?.name}, ${user?.address}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          userBloc.add(CreateUserEvent(User("kkang", "seoul")));
                        },
                        child: Text("create"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          userBloc.add(UpdateUserEvent(User("kim", "busan")));
                        },
                        child: Text("update"),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
