import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class KkangSqflite extends StatelessWidget {
  const KkangSqflite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangSqfliteNativePluginWidget(),
    );
  }
}

class User {
  int? id;
  String? name;
  String? address;

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      "name": name,
      "address": address,
    };

    if (id != null) {
      map["id"] = id;
    }

    return map;
  }

  User.fromData(this.name, this.address);

  User.fromMap(Map<String, Object?> map) {
    id = map["id"] as int;
    name = map["name"] as String;
    address = map["address"] as String;
  }
}

class KkangSqfliteNativePluginWidget extends StatefulWidget {
  const KkangSqfliteNativePluginWidget({super.key});

  @override
  State<KkangSqfliteNativePluginWidget> createState() =>
      _KkangSqfliteNativePluginWidgetState();
}

class _KkangSqfliteNativePluginWidgetState
    extends State<KkangSqfliteNativePluginWidget> {
  @override
  void initState() {
    super.initState();
    _createTable();
  }

  var db;

  _createTable() async {
    db = await openDatabase("my_db.db", version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
        CREATE TABLE User (
          id INTEGER PRIMARY KEY,
          name TEXT,
          address TEXT
        )
      ''');
    }, onUpgrade: (Database db, int oldVerion, int newVersion) {});
  }

  int lastId = 0;

  insert() async {
    lastId++;
    User user = User.fromData("name$lastId", "seoul$lastId");
    lastId = await db.insert("User", user.toMap());
    print("${user.toMap()}");
  }

  update() async {
    User user = User.fromData("name${lastId - 1}", "address${lastId - 1}");
    await db.update("User", user.toMap(), where: "id=?", whereArgs: [lastId]);
  }

  delete() async {
    await db.delete("User", where: "id=?", whereArgs: [lastId]);
    lastId--;
  }

  query() async {
    List<Map> maps = await db.query(
      "User",
      columns: ["id", "name", "address"],
    );
    List<User> users = List.empty(growable: true);
    for (var element in maps) {
      users.add(User.fromMap(element as Map<String, Object?>));
    }
    if (maps.isNotEmpty) {
      print("select: ${maps.first}");
    }
    for (var user in users) {
      print("${user.name}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite Test"),
      ),
      body: Container(
        color: Colors.indigo,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: insert,
                child: Text("insert"),
              ),
              ElevatedButton(
                onPressed: update,
                child: Text("update"),
              ),
              ElevatedButton(
                onPressed: delete,
                child: Text("delete"),
              ),
              ElevatedButton(
                onPressed: query,
                child: Text("query"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
