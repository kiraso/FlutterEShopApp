import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ui_design/components/horizontal_listview.dart';
import 'package:ui_design/components/products.dart';

void main(){

    runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage()
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/cc1.jpg'),
        AssetImage('images/cc2.jpg'),
        AssetImage('images/cc3.jpg'),
        AssetImage('images/cc4.jpg'),
        

      ],
      autoplay: true,
      // showIndicator:false,
      dotBgColor: Colors.grey[800].withOpacity(0),
      dotSize: 4.0,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 1000),
    ),
  );

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
      drawer: new Drawer(
      
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Annie Kiraso')
            , accountEmail: Text('kiraso74@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.pink[600],
                child: Icon(Icons.person, color:Colors.white)
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.pink[200],
            ),
            ),

            //body
           InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
              InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('Account'),
                leading: Icon(Icons.person),
              ),
            ),
              InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
              InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('Catagories'),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),
            InkWell(
                onTap: (){},
                child: ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
                onTap: (){},
                
                child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          //add padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child:new Text('Catagories'),
          ),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(8.0),
            child:  new Text('Recent Product'),
          ),
          Container(
            height: 320.0,
            child: Products(),
          )
        ]
      ),
    );
  }
}

