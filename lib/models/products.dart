class Product {
  String candyID;
  String candyName;
  String imageUrl;
  String weight;
  String price;
  String description;
  String quantity;

  Product({
    this.candyID,
    this.candyName,
    this.description,
    this.price,
    this.quantity,
    this.weight,
  });

// Product.fromDocumentSnapshot({DocumentSnapshot doc}) {
//     candyID = doc.id;
//     candyName = doc.data()['candy_id'];
//     weight = doc.data()['weight'];
//     price = doc.data()['price'];
//     description = doc.data()['description'];
//     imageUrl = doc.data()['image_url'];
//   }

}
