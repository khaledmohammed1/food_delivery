import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:food_delivery/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../../home/home_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Sign in to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SignInButton(
            Buttons.Apple,
            text: "Sign up with Apple",
            onPressed: () {},
          ),
          const SizedBox(
            height: 2,
          ),
          GetBuilder<AuthController>(
            init: Get.put(AuthController()),
            builder:(controller)=> SignInButton(
              Buttons.Google,
              text: "Sign up with Google",
              onPressed: () {
                controller.googleSignUp().then((value) => Get.offAll(()=>const HomeScreen()));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
