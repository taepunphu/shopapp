import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  Products({Key key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Adidas",
      "picture": "images/product/adidas.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Cust shoes",
      "picture": "images/product/custshoes.jpg",
      "old_price": 100,
      "price": 80,
    },
    {
      "name": "dress1",
      "picture": "images/product/dress1.jpg",
      "old_price": 40,
      "price": 60,
    },
    {
      "name": "dress2",
      "picture": "images/product/dress2.jpg",
      "old_price": 500,
      "price": 450,
    },
    {
      "name": "dress3",
      "picture": "images/product/dress2.jpg",
      "old_price": 1200,
      "price": 1000,
    },
    {
      "name": "Nike",
      "picture": "images/products/nike.jpg",
      "old_price": 5000,
      "price": 2500,
    },
    {
      "name": "Vans",
      "picture": "images/products/vans.jpg",
      "old_price": 3500,
      "price": 3000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
