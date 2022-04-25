import 'package:admin_athena_hour_tracker_app/Screens/Welcome/welcome_page.dart';
import 'package:admin_athena_hour_tracker_app/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBqJAxrfpB43ZBhK-VP_qS_DdKzJ127Jpg",
        appId: "1:74227861677:android:4d8fb8dfe1f65b5900de24",
        messagingSenderId: "74227861677-5he88k13s95nc87t2sqn1r685hjfu5su.apps.googleusercontent.com",
        projectId: "athenatimetracker"
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}
