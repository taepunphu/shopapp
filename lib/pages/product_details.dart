import 'package:flutter/material.dart';
import 'package:shopapp/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('Flashapp')),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            height: 400.0,
            child: GridTile(
              child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture)),
              footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(widget.product_detail_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text('\$${widget.product_detail_old_price}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w800,
                                  decoration: TextDecoration.lineThrough)),
                        ),
                        Expanded(
                          child: Text(
                            '\$${widget.product_detail_new_price}',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ),

          //First button
          Row(
            children: <Widget>[
              //the size button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                              title: new Text('Size'),
                              content: new Text('Choose the size'),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('Close'),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                              title: new Text('Color'),
                              content: new Text('Choose a color'),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('Close'),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                              title: new Text('Quantity'),
                              content: new Text('Choose the quantity'),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text('Close'),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text('Buy Now')),
              ),
              new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          ),
          Divider(),
          new ListTile(
              title: new Text("Product Detail"),
              subtitle: new Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has")),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Brand Adidas"),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("NEW"),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),
          //Similar Products section
          Container(
            height: 320.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Adidas",
      "picture": "images/product/adidas.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Cut Shoes",
      "picture": "images/product/cutshoes.jpg",
      "old_price": 100,
      "price": 80,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext coontext, int index) {
        return Similar_Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      },
    );
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: new Text("hero 1"),
            child: Material(
              child: InkWell(
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => new ProductDetails(
                            product_detail_name: prod_name,
                            product_detail_new_price: prod_price,
                            product_detail_old_price: prod_old_price,
                            product_detail_picture: prod_picture,
                          ))),
                  child: GridTile(
                    footer: Container(
                        color: Colors.white,
                        child: new Row(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                prod_name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                            new Text(
                              "\$$prod_old_price",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    ),
                  )),
            )));
  }
}
