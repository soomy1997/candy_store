import 'package:candy_store/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CartProductCard extends StatefulWidget {
  const CartProductCard({Key key}) : super(key: key);

  @override
  _CartProductCardState createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder(
          stream: FirebaseFirestore.instance.collection("products").snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasData) {
              return ListView(
                shrinkWrap: true,
                children: snapshot.data.docs.map((document) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Image.network(
                          document['image_url'],
                          height: 80,
                          width: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                document['candy_name'],
                                style: h4,
                              ),
                              Text(
                                document['weight'] + ' kg',
                                style: h5,
                              ),
                              Text(
                                document['price'] + ' SAR',
                                style: h4,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle_outline),
                              onPressed: () {},
                            ),
                            Text('1'),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              );
            } else
              return Text('error');
          },
        ),
      ],
    );
  }
}
