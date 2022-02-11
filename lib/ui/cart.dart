import 'package:candy_store/cart_widgets/cart_products_card.dart';
import 'package:candy_store/utils/constants.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar2(context, title: 'My Cart'),
      body: Column(
        children: [
          Text(
            'cart',
            style: h1,
          ),
          CartProductCart(),
          
        ],
      ),
    );
  }
}
