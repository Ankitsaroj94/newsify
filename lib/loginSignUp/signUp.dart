import 'package:newsify/routes/routesName.dart';

import 'signUpPageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController signUpController = Get.put(SignUpController());

    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => signUpController.name.value = value,
              decoration: const InputDecoration(labelText: 'Name'),
              keyboardType: TextInputType.text,
            ),
            TextField(
              onChanged: (value) => signUpController.email.value = value,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              onChanged: (value) => signUpController.password.value = value,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => signUpController.signUp(),
              child: const Text('Sign Up'),
            ),
            TextButton(
              onPressed: () => Get.toNamed(RoutesName.login),
              child: const Text('Already have an account? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
