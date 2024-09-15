
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsify/routes/routesName.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;

  // Firebase Auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Login function
  Future<void> login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      // Navigate to the home page on successful login
      Get.offAllNamed(RoutesName.headlines);
    } catch (e) {
      Get.snackbar('Login Error', e.toString());
    }
  }
}
