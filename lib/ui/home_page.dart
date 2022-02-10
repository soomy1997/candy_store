import 'package:candy_store/home_page_components/product_list.dart';
import 'package:candy_store/home_page_components/slide_show.dart';
import 'package:candy_store/home_page_components/main_drawer.dart';
import 'package:candy_store/utils/constants.dart';
import 'package:flutter/material.dart';

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
              Text(
                'Everything in your door step',
                style: h1,
              ),
              ImageSlider(),
              ProductList(),
            ],
          ),
        ),
      ),
    );
  }
}
