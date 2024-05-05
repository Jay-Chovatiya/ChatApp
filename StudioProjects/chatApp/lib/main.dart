import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/helper/helper_function.dart';
import 'package:chatapp/pages/auth/login_page.dart';
import 'package:chatapp/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // widgetsFlutterBindingr.ensureInirialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignIn = false;

  @override
  void initState() {
    super.initState();
    getUserLoginStatus();
  }
  getUserLoginStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value){
      if(value != null ){
        setState(() {
          _isSignIn = value;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Char App',
      theme: ThemeData(
        primaryColor: const Color(0xFFee7b64),
        scaffoldBackgroundColor: Colors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: _isSignIn ? const HomeScreen() :const LoginPage(),
    );
  }
}
