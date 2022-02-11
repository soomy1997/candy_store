import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
//'images/slide1.png',
  'images/slide2.JPG',
  'images/slide3.JPG',
  'images/slide4.JPG'
];

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
          ),
          items: imageSliders,
        ));
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: EdgeInsets.all(10.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage(item),
                      fit: BoxFit.cover,
                      width: 2000.0,
                    ),
                  ),
                ],
              )),
        ))
    .toList();
