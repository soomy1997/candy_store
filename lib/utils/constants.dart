import 'package:flutter/material.dart';

///////////////////////Colors////////////////////////////////const primaryBlack = const Color(0xff0B0B0B);
const roseQuartz = const Color(0xfff7cac9);
const lightRoseQuartz = const Color(0xffdec2cb);
const lightPurpil = const Color(0xffc5b9cd);
const lightSerenity = const Color(0xffabb1cf);
const serenity = const Color(0xff92a8d1);
const white= Colors.white;
const black= Colors.black;
///////////////////////text styles////////////////////////////////

const style = TextStyle(fontFamily: 'Roboto', fontSize: 20.0);

//page headlines
const h1 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 28,
);

//Text Fields
const h3 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 28,
);

//black bold labels
const h4 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 17,
);

//grey thin texts
const h5 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.grey,
  fontWeight: FontWeight.normal,
  fontSize: 17,
);

///////////////////////AppBar styles////////////////////////////////
AppBar myAppBar(
  context, {
  // String title,
  IconButton iconButton,
}) {
  return AppBar(
    backgroundColor: lightRoseQuartz,
    title: Image.asset(
      '/Users/asmaalkhaldi/flutter_projects/candy_store/images/logo.png',
      height: 150,
      width: 150,
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          // TODO        do something
        },
      ),
    ],
  );
}
