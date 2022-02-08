import 'package:candy_store/components/main_drawer.dart';
import 'package:candy_store/components/slide_show.dart';
import 'package:flutter/material.dart';
import 'package:candy_store/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
        context,
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: ImageSlider(),
              ),
              Text(
                'Everything in your door step',
                style: h1,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
