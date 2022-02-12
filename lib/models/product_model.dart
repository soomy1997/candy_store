import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String candyID;
  final String candyName;
  final String imageUrl;
  final String weight;
  final String price;
  final String description;
  final String quantity;

  Product({
    this.candyID,
    this.candyName,
    this.imageUrl,
    this.description,
    this.price,
    this.quantity,
    this.weight,
  });
  @override
  List<Object> get props => [
        candyID,
        candyName,
        imageUrl,
        weight,
        price,
        description,
        quantity,
      ];

  static Product fromSnapshot(DocumentSnapshot snapshot) {
    Product product = Product(
      candyID: snapshot['product_id'],
      candyName: snapshot['candy_name'],
      imageUrl: snapshot['image_url'],
      price: snapshot['price'],
      weight: snapshot['weight'],
      quantity: snapshot['quantity'],
      description: snapshot['description'],
    );
    return product;
  }
}
