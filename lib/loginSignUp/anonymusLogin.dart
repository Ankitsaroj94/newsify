import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:newsify/routes/routesName.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Function to handle anonymous login
  Future<void> loginAnonymously() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      print("User ID: ${userCredential.user?.uid}");

      // Navigate to the home screen after successful login
      Get.offNamed(RoutesName.headlines);
    } catch (e) {
      // Handle errors
      Get.snackbar('Login Error', e.toString());
    }
  }
}
