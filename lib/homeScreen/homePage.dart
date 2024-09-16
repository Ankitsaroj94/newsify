import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsify/routes/routesName.dart';
import 'package:newsify/uiComponents/buttons.dart';

import 'package:newsify/uiComponents/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Welcome To ",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 35,
                    ),
                  ),
                ),
                const Center(
                  child: Text("Newsify",
                      style: TextStyle(
                          color: AppColors.primaryColor, fontSize: 35)),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                        color: AppColors.textButtonColor,
                        textColor: AppColors.textColor,
                        text: "Signup",
                        onPressed: () => Get.offAllNamed(RoutesName.signUp)),
                    CustomButton(
                      color: AppColors.textButtonColor,
                      textColor: AppColors.textColor,
                      text: "Login",
                      onPressed: () async {
                        final FirebaseAuth _auth = FirebaseAuth.instance;
                        if (_auth.currentUser != null) {
                          // If the user is already logged in, navigate to the trending news page
                          Get.offAllNamed(RoutesName.trendingnews);
                        } else {
                          // If the user is not logged in, navigate to the login page
                          Get.offAllNamed(RoutesName.login);
                        }
                      },
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
