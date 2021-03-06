import 'package:candy_store/simple_bloc_observer.dart';
import 'package:candy_store/ui/home_page.dart';
import 'package:candy_store/ui/product_details.dart';
import 'package:candy_store/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 // Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: white,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
