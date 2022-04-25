import 'package:admin_athena_hour_tracker_app/Screens/Login/login_page.dart';
import 'package:admin_athena_hour_tracker_app/Screens/Registration/registration_page.dart';
import 'package:admin_athena_hour_tracker_app/Screens/Welcome/Components/welcome_background_page.dart';
import 'package:admin_athena_hour_tracker_app/Screens/Widgets/RoundedButtonWidget.dart';
import 'package:flutter/material.dart';

class WelcomeBodyWidget extends StatelessWidget {
  const WelcomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WelcomeBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO ATHENA",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Image.asset("assets/images/main_center2.png"),
          RoundedButtonWidget(
            text: "LOGIN",
            press: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LoginPage(),
            )),
            color: const Color(0xFF6F35A5),
            textColor: Colors.white,
          ),
          RoundedButtonWidget(
            text: "SIGNUP",
            press: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => RegistrationPage(),
            )),
            color: const Color.fromRGBO(244, 190, 199, 1),
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
