import 'package:flutter/material.dart';

class KkangScaffold extends StatefulWidget {
  const KkangScaffold({super.key});

  @override
  State<KkangScaffold> createState() => _KkangScaffoldState();
}

class _KkangScaffoldState extends State<KkangScaffold> {
  int _seletedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Text(
      "First Screen",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Second Screen",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Third Screen",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      "Fourth Screen",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _seletedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.fromSwatch().copyWith(
                  secondary: Colors.white,
                ),
              ),
              child: Container(
                height: 48.0,
                alignment: Alignment.center,
                child: const Text("AppBar Bottom Text"),
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/study/kkang/ch9_3_image/big.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: const Text("AppBar Title"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(child: _widgetOptions.elementAt(_seletedIndex)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          // fixed, shifting
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "First",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: "Second",
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Third",
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Fourth",
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _seletedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("Drawer Header"),
              ),
              ListTile(
                title: const Text("item 1"),
                onTap: () {},
              ),
              ListTile(
                title: const Text("item 2"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
