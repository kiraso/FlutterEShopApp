import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  const ProductDetails({
    this.product_detail_name, 
    this.product_detail_price, 
    this.product_detail_old_price, 
    this.product_detail_picture}
  );
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        elevation: 10,
        title: Text('KeyCapShop'),
        backgroundColor: Colors.red[300],
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: null)
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
                  child: Container(
                    color: Colors.white70,
                    child: Image.asset(widget.product_detail_picture)
                  ),
                  footer: new Container(
                        color: Colors.white,
                        child: ListTile(
                            leading: new Text(widget.product_detail_name,
                            style: TextStyle(fontWeight: FontWeight.w800),), 
                            title: new  Row(
                                children: <Widget>[
                                  Expanded(
                                    child: new Text("${widget.product_detail_old_price} \฿")
                                  ),
                                   Expanded(
                                    child: new Text("${widget.product_detail_price} \฿")
                                  ),
                                ],
                            ),
                        ),
                  ),
            ),
      
          )
        ]
      ),
    );
  }
}