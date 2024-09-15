import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:get/get.dart';

import 'routes/routesName.dart';
import 'routes/routesPath.dart';
void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const Newsify());
}

class Newsify extends StatelessWidget {
  const Newsify({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
    initialRoute: RoutesName.home,
      getPages: RoutesPath.routes,
    );
  }
}
