import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';

//import 'package:carousel_slider/carousel_slider.dart';

//my own import
//import './Components/horizontal_listview.dart';
import 'package:shopapp/Components/horizontal_listview.dart';
import 'package:shopapp/Components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

//stf
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imagecarousel = new Container(
      height: 100.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/review-clothes1.jpg'),
          AssetImage('images/review-clothes2.jpg'),
          AssetImage('images/review-shoes1.jpg'),
        ],
        autoplay: false,
        //animationCurve: Curves.fastOutSlowIn,
        //animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    //header Navigation
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text('Flash Shop'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {})
        ],
      ),

      //header drawer
      drawer: new Drawer(
          child: new ListView(children: <Widget>[
        //header
        new UserAccountsDrawerHeader(
          accountName: Text('kiattisak Phanphu'),
          accountEmail: Text('taepunphu@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white)),
          ),
          decoration: new BoxDecoration(color: Colors.red),
        ),

        //body
        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('Home Page'),
              leading: Icon(
                Icons.home,
                color: Colors.red,
              )),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('My caccounts'),
              leading: Icon(
                Icons.person,
                color: Colors.red,
              )),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('My Orders'),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              )),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              )),
        ),

        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('Favorites'),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
        ),

        Divider(),

        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
              )),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
              )),
        ),
      ])),

      body: new ListView(children: <Widget>[
        imagecarousel,

        //padding Categories
        new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
        ),

        //Horizontal List view begin here
        HorizontalList(),

        //padding widget
        new Padding(
          padding: const EdgeInsets.all(20.0),
          child: new Text('Reccent Products'),
        ),

        //grid view
        Container(
          height: 320,
          child: Products(),
        )
      ]),
    );
  }
}
