import 'package:candy_store/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final Stream<QuerySnapshot> details =
      FirebaseFirestore.instance.collection('products').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: StreamBuilder<QuerySnapshot>(
            stream: details,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Somthing wrong');
              }
              final data = snapshot.requireData;
              return ListView.builder(
                  itemCount: data.size,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // CircleAvatar(
                            //   backgroundColor: lightSerenity,
                            //   radius: 110,
                            //   child: Image.network(
                            //     '${data.docs[index]['image_url']}',
                            //     fit: BoxFit.fill,
                            //   ),
                            // ),
                          ],
                        ),
                        Row()
                      ],
                    );
                  });
            }),
      ),
    );
  }
}
