import 'package:candy_store/ui/cart.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

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
const h2 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 17,
);

//grey thin texts
const h5 = TextStyle(
  fontFamily: 'Roboto',
  color: Colors.grey,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);

///////////////////////AppBar styles////////////////////////////////
AppBar customAppBar(
  context, {
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
      Container(
        child: Badge(
          badgeContent: Text('5'),
          animationType: BadgeAnimationType.slide,
          position: BadgePosition.topEnd(top: -0.2, end: -0.2),
          padding: const EdgeInsets.all(6.0),
          stackFit: StackFit.loose,
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          ),
        ),
      )
    ],
  );
}

AppBar customAppBar2(
  context, {
  IconButton iconButton,
  String title,
}) {
  return AppBar(
    backgroundColor: lightRoseQuartz,
    title: Text(title,
        style: TextStyle(
          color: Colors.white,
        )),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.white),
    actions: <Widget>[
      Container(
        child: Badge(
          badgeContent: Text('5'),
          animationType: BadgeAnimationType.slide,
          position: BadgePosition.topEnd(top: -0.2, end: -0.2),
          padding: const EdgeInsets.all(6.0),
          stackFit: StackFit.loose,
          child: IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(),
                ),
              );
            },
          ),
        ),
      )
    ],
  );
}
