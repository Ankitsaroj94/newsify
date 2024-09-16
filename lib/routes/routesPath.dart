import 'package:get/get.dart';
import 'package:newsify/homeScreen/homePage.dart';
import 'package:newsify/homeScreen/splashScreen.dart';
import 'package:newsify/loginSignUp/loginPage.dart';
import 'package:newsify/loginSignUp/signUp.dart';
import 'package:newsify/routes/routesName.dart';
import 'package:newsify/trendingNews/trendingNewsPage.dart';

class RoutesPath{


  static final routes=[
    GetPage(name: RoutesName.home, page: ()=>const Homepage()),
    GetPage(name: RoutesName.login, page: ()=> const LoginScreen()),
    GetPage(name: RoutesName.signUp, page: ()=> const SignUpScreen()),
    GetPage(name: RoutesName.trendingnews, page: ()=>  const TrendingNewsPage()),
    GetPage(name: RoutesName.splashscreen, page: ()=>  const SplashPage()),
  ];
}
