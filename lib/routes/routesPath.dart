import 'package:get/get.dart';
import 'package:newsify/headlines/headlinesPage.dart';
import 'package:newsify/homeScreen/homePage.dart';
import 'package:newsify/loginSignUp/loginPage.dart';
import 'package:newsify/loginSignUp/signUp.dart';
import 'package:newsify/routes/routesName.dart';

class RoutesPath{


  static final routes=[
    GetPage(name: RoutesName.home, page: ()=>const Homepage()),
    GetPage(name: RoutesName.login, page: ()=> const LoginScreen()),
    GetPage(name: RoutesName.signUp, page: ()=> SignUpScreen()),
    GetPage(name: RoutesName.headlines, page: ()=> const Headlinespage()),
  ];
}
