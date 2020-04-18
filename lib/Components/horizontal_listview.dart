import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Category(
          image_location: 'images/cats/accessories.png',
          image_caption: 'ACCESSORIES',
        ),
        Category(
          image_location: 'images/cats/dress.png',
          image_caption: 'DRESS',
        ),
        Category(
          image_location: 'images/cats/formal.png',
          image_caption: 'FORMAL',
        ),
        Category(
          image_location: 'images/cats/informal.png',
          image_caption: 'INFORMAL',
        ),
        Category(
          image_location: 'images/cats/jean.png',
          image_caption: 'JEAN',
        ),
      ]),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 50.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            )
          ),
        ),
      ),
    );
  }
}
