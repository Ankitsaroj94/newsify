import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../routes/routesName.dart';

class SplashController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    _checkUserLoggedIn();
  }

  // Function to check if the user is already logged in
  void _checkUserLoggedIn() async {
    await Future.delayed(Duration(seconds: 2));  // Simulate a splash screen delay

    if (_auth.currentUser != null) {
      // User is already logged in, navigate to the trending news page
      Get.offAllNamed(RoutesName.trendingnews);
    } else {
      // User is not logged in, navigate to the login page
      Get.offAllNamed(RoutesName.login);
    }
  }
}
