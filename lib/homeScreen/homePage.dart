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
                const Row(
                  children: [
                    Text(
                      "Welcome To ",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text("Newsify",
                        style: TextStyle(
                            color: AppColors.primaryColor, fontSize: 35)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomButton(
                    color: AppColors.textButtonColor,
                    textColor: AppColors.textColor,
                    text: "Login",
                    onPressed: () => Get.offAllNamed(RoutesName.login)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
