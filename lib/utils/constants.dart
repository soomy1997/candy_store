import 'package:flutter/material.dart';

///////////////////////Colors////////////////////////////////const primaryBlack = const Color(0xff0B0B0B);
const roseQuartz = const Color(0xfff7cac9);
const lightRoseQuartz = const Color(0xffdec2cb);
const lightPurpil = const Color(0xffc5b9cd);
const lightSerenity = const Color(0xffabb1cf);
const serenity = const Color(0xff92a8d1);
const white = Colors.white;
const black = Colors.black;
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
    title: Image.network(
      'https://firebasestorage.googleapis.com/v0/b/candy-store-df71b.appspot.com/o/logo.png?alt=media&token=c7ccd36d-45c8-4fec-bba3-44299c429321',
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
