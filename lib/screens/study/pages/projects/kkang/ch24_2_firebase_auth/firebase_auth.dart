import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:record_flutter/firebase_options.dart';

showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

class KkangFirebaseAuth extends StatelessWidget {
  const KkangFirebaseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangFirebaseAuthWidget(),
    );
  }
}

class KkangFirebaseAuthWidget extends StatefulWidget {
  const KkangFirebaseAuthWidget({super.key});

  @override
  State<KkangFirebaseAuthWidget> createState() =>
      _KkangFirebaseAuthWidgetState();
}

class _KkangFirebaseAuthWidgetState extends State<KkangFirebaseAuthWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  final _formKey = GlobalKey<FormState>();

  late String email;
  late String password;
  bool isInput = true;
  bool isSignIn = true;

  signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print(value);
        if (value.user!.emailVerified) {
          setState(() {
            isInput = false;
          });
        } else {
          showToast("emailVerified error");
        }
        return value;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        showToast("user-not-found");
      } else if (e.code == "wrong-password") {
        showToast("wrong-password");
      } else {
        print(e.code);
      }
    }
  }

  signOut() async {
    await FirebaseAuth.instance.signOut();
    setState(() {
      isInput = true;
    });
  }

  signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        if (value.user!.email != null) {
          FirebaseAuth.instance.currentUser?.sendEmailVerification();
          setState(() {
            isInput = false;
          });
        }
        return value;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        showToast("weak-password");
      } else if (e.code == "email-already-in-use") {
        showToast("email-already-in-use");
      } else {
        showToast("other error");
        print(e.code);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  List<Widget> getInputWidget() {
    return [
      Text(
        isSignIn ? "SignIn" : "SignUp",
        style: TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
      Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "email",
              ),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Please enter email";
                }
                return null;
              },
              onSaved: (String? value) {
                email = value ?? "";
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "password",
              ),
              validator: (value) {
                if (value?.isEmpty ?? false) {
                  return "Please enter password";
                }
                return null;
              },
              onSaved: (String? value) {
                password = value ?? "";
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  _formKey.currentState?.save();
                  print("email: $email, password: $password");
                  if (isSignIn) {
                    signIn();
                  } else {
                    signUp();
                  }
                }
              },
              child: Text(isSignIn ? "SignIn" : "SignUp"),
            ),
            RichText(
              textAlign: TextAlign.right,
              text: TextSpan(
                text: "Go ",
                style: Theme.of(context).textTheme.bodyMedium,
                children: <TextSpan>[
                  TextSpan(
                    text: isSignIn ? "SignUp" : "SignIn",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          isSignIn = !isSignIn;
                        });
                      },
                  )
                ],
              ),
            )
          ],
        ),
      )
    ];
  }

  List<Widget> getResultWidget() {
    String resultEmail = FirebaseAuth.instance.currentUser!.email!;
    return [
      Text(
        isSignIn
            ? "$resultEmail로 로그인하셨습니다!"
            : "$resultEmail로 회원 가입 하셨습니다! 이메일 인증을 거쳐야 로그인이 가능합니다.",
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
      ElevatedButton(
        onPressed: () {
          if (isSignIn) {
            signOut();
          } else {
            setState(() {
              isInput = true;
              isSignIn = true;
            });
          }
        },
        child: Text(isSignIn ? "SignOut" : "SignIn"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Auth Test"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: isInput ? getInputWidget() : getResultWidget(),
      ),
    );
  }
}
