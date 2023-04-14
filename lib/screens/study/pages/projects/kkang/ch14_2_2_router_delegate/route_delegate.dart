import 'package:flutter/material.dart';

class KkangRouteDelegate extends StatefulWidget {
  const KkangRouteDelegate({super.key});

  @override
  State<KkangRouteDelegate> createState() => _KkangRouteDelegateState();
}

class _KkangRouteDelegateState extends State<KkangRouteDelegate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}

class MyRoutePath {
  String? id;
  MyRoutePath.home() : id = null;
  MyRoutePath.detail(this.id);
}

class MyRouteInformationParser extends RouteInformationParser<MyRoutePath> {
  @override
  Future<MyRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? "/");
    if (uri.pathSegments.length >= 2) {
      var remaining = uri.pathSegments[1];
      return MyRoutePath.detail(remaining);
    } else {
      return MyRoutePath.home();
    }
  }

  @override
  RouteInformation restoreRouteInformation(MyRoutePath configuration) {
    if (configuration.id != null) {
      return RouteInformation(location: "/detail/${configuration.id}");
    } else {
      return const RouteInformation(location: "/");
    }
  }
}

class MyRouterDelegate extends RouterDelegate<MyRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {
  String? selectId;
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  MyRoutePath get currentConfiguration {
    if (selectId != null) {
      return MyRoutePath.detail(selectId);
    } else {
      return MyRoutePath.home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: HomeScreen(onPressed: _handleOnPressed)),
        if (selectId != null) MaterialPage(child: DetailScreen(id: selectId))
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }
        selectId = null;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(MyRoutePath configuration) async {
    if (configuration.id != null) {
      selectId = configuration.id;
    }
  }

  void _handleOnPressed(String id) {
    selectId = id;
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  final ValueChanged<String> onPressed;

  const HomeScreen({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Home Screen",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () => onPressed("1"),
                child: const Text("go detail with 1"),
              ),
              ElevatedButton(
                onPressed: () => onPressed("2"),
                child: const Text("go detail with 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String? id;
  const DetailScreen({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text(
            "Detail Screen $id",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
