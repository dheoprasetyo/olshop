import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/png/001-tshirt-1.png',
            image_caption: 'tshirt',
          ),

          Category(
            image_location: 'images/png/019-dress.png',
            image_caption: 'dress',
          ),

          Category(
            image_location: 'images/png/003-jacket-1.png',
            image_caption: 'formal',
          ),

          Category(
            image_location: 'images/png/002-polo.png',
            image_caption: 'informal',
          ),

          Category(
            image_location: 'images/png/021-jeans.png',
            image_caption: 'jeans',
          ),

          Category(
            image_location: 'images/png/011-shoes.png',
            image_caption: 'shoe',
          ),

          Category(
            image_location: 'images/png/018-bag.png',
            image_caption: 'accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2),
    child: Container(
      width: 85,
        child: ListTile(
          onTap: (){},
          title: Image.asset(image_location, width: 60, height: 60,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption, style: new TextStyle(fontSize: 12),),
          )
        )
    )
    ,);
  }
}
