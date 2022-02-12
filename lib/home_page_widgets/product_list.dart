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
              childAspectRatio: 0.7,
            ),
            itemBuilder: (BuildContext context, int index) {
              DocumentSnapshot ds = snapshot.data.docs[index];
              Widget candyImage() {
                return CircleAvatar(
                  backgroundColor: lightSerenity,
                  radius: 45,
                  child: Image.network(
                    ds['image_url'],
                    fit: BoxFit.fill,
                  ),
                );
              }

              Widget candyName() {
                return Container(
                  constraints: BoxConstraints(maxWidth: 200),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    ds['candy_name'],
                    style: h4,
                  ),
                );
              }

              Widget candyWeight() {
                return Container(
                  width: double.infinity,
                  constraints: BoxConstraints(maxWidth: 200),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'By weight SR' + ds['weight'] + ' kg',
                    style: h5,
                  ),
                );
              }

              Widget candyPrice() {
                return Text(
                  ds['price'] + ' SR',
                  style: h4,
                );
              }

              return Card(
                margin: EdgeInsets.all(10),
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      candyImage(),
                      SizedBox(
                        height: 8,
                      ),
                      candyName(),
                      candyWeight(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          candyPrice(),
                          IconButton(
                            icon: Icon(
                              Icons.add_box_rounded,
                              size: 40,
                              color: roseQuartz,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
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
