import 'package:candy_store/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("products").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {}
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              DocumentSnapshot ds = snapshot.data.docs[index];
              return Card(
                color: Colors.white,
                margin: EdgeInsets.all(10),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: lightSerenity,
                        radius: 45,
                        child: Image.network(
                          ds['image_url'],
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(
                          ds['candy_name'],
                          style: h4,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: snapshot.data.docs.length,
          );
        },
      ),
    );
  }
}
