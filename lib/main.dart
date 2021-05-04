import 'package:flutter/material.dart';
import 'package:sparkcart/view/auth/login_screen.dart';
import 'package:get/get.dart';
import 'helper/bining.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SparkCart',
      initialBinding: Binding(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
//  return FutureBuilder(
//     future: Firebase.initializeApp(),
//     builder: (context, snapshot) {
//       // Check for errors
//       if (snapshot.hasError) {
//         return Container();
//       }

//       // Once complete, show your application
//       if (snapshot.connectionState == ConnectionState.done) {
//         return GetMaterialApp(
//           title: 'SparkCart',
//           initialBinding: Binding(),
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//           ),
//           home: LoginScreen(),
//         );
//       }

//       // Otherwise, show something whilst waiting for initialization to complete
//       return Container();
//     },
//   );
