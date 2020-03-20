import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'components/horizontal_listview.dart';
import 'package:olshop/components/products.dart';
import 'package:olshop/pages/cart.dart';
void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  // HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4,
        indicatorBgPadding: 2,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
//        centerTitle: true,
        title: Text('Toko'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () {
               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },)
        ],
      ),
      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Dheo PN'),
              accountEmail: Text('dheoprasetyo.dp@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
            ),

            ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),

            ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person),
              onTap: () {},
            ),

            ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket),
              onTap: () {},
            ),

            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard),
              onTap: () {},
            ),

            ListTile(
              title: Text("Favorite"),
              leading: Icon(Icons.favorite),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),

            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
              onTap: () {},
            )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
//          image caraosel
          image_carousel,
//          padding widget
          new Padding(padding: const EdgeInsets.all(8),
            child: new Text('Categories'),),

//          Horizontal list view
          HorizontalList(),

//          padding widget
          new Padding(padding: const EdgeInsets.all(20),
            child: new Text('Recent product'),),

        //  grid view
          Container(
            height: 320,
            child: Products(),
          )

        ],
      ),
    );
    }
}