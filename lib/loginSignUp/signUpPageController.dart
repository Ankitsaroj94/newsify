
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsify/routes/routesName.dart';

class SignUpController extends GetxController {
  // Observables
  var email = ''.obs;
  var password = ''.obs;
  var name =''.obs;

  // Firebase Auth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign-up function
  Future<void> signUp() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,

      );
      // Navigate to the login page on successful sign-up
      Get.offNamed(RoutesName.login);
    } catch (e) {
      // Handle sign-up errors
      Get.snackbar('Sign Up Error', e.toString());
    }
  }
}
