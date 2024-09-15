import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsify/routes/routesName.dart';
import '../uiComponents/buttons.dart';
import '../uiComponents/colors.dart';
import 'loginPageController.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => loginController.email.value = value,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              onChanged: (value) => loginController.password.value = value,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => loginController.login(),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => Get.toNamed(RoutesName.signUp),
              child: const Text('Sign Up'),
            ),
            CustomButton(
                color: AppColors.textButtonColor,
                textColor: AppColors.textColor,
                text: "Anonymous Login",
                onPressed: () => Get.offAllNamed(RoutesName.headlines)),
          ],
        ),
      ),
    );
  }
}
