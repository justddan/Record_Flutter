import 'package:flutter/material.dart';

class User {
  String name;
  String phone;
  String email;

  User(this.name, this.phone, this.email);
}

class KkangListView extends StatelessWidget {
  const KkangListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<User> users = [
      User("홍길동", "0100001", "a@a.com"),
      User("김길동", "0100002", "b@a.com"),
      User("이길동", "0100003", "c@a.com"),
      User("박길동", "0100004", "d@a.com"),
      User("홍길동", "0100001", "a@a.com"),
      User("김길동", "0100002", "b@a.com"),
      User("이길동", "0100003", "c@a.com"),
      User("박길동", "0100004", "d@a.com"),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Test"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage("assets/study/kkang/ch9_3_image/big.jpeg"),
                ),
                title: Text(users[index].name),
                subtitle: Text(users[index].phone),
                trailing: const Icon(Icons.more_vert),
                onTap: () {
                  print(users[index].name);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 2,
                color: Colors.black,
              );
            },
            itemCount: users.length),
      ),
    );
  }
}
