import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CartProductCart extends StatelessWidget {
  CartProductCart({Key key}) : super(key: key);

 final CollectionReference productStream =
      FirebaseFirestore.instance.collection('products');

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text('data'),
        StreamBuilder<QuerySnapshot>(
          stream: productStream.snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            } else
              return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data.docs[index]['candy_name']),
                      subtitle: Text(snapshot.data.docs[index]['price']),
                    );
                  });
          },
        )
      ],
    );
  }
}
