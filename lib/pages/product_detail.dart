import 'package:olshop/main.dart';
import 'package:flutter/material.dart';
// import 'home.dart';

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
//        centerTitle: true,
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text('Toko')),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\Rp ${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                        "\Rp ${widget.product_detail_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

//          first button
          Row(
            children: <Widget>[
//              size button
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Color"),
                          content: new Text("Choose the color"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Color"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),

              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose the quantity"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Quantity"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
            ],
          ),

//        second button
          Row(
            children: <Widget>[
//              size button
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.blue,
                      elevation: 0.2,
                      textColor: Colors.white,
                      child: new Text("Buy"))),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.blue,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                  onPressed: () {})
            ],
          ),

          Divider(),
          new ListTile(
            title: new Text("Detail"),
            subtitle: new Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
            ),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: new Text("Brand X"),
              )
            ],
          ),

//          product condition
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: new Text("new"),
              )
            ],
          ),

//          similar product
        Divider(),
        Padding(padding: const EdgeInsets.all(8), child: new Text("Similar Products"),),
        Container(
          height: 340,
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
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 250000,
      "price": 200000,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 200000,
      "price": 190000,
    },
    {
      "name": "Blazer2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 200000,
      "price": 190000,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_Single_prod (
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

  Similar_Single_prod ({
    this.prod_name,
    this.prod_old_price,
    this.prod_picture,
    this.prod_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                passing value product to product detail page
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
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        new Text("\Rp ${prod_price}", style: TextStyle(color: Colors.blue),)
                      ],
                    )),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
