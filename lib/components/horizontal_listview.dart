import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget>[
          Category(
            image_location: 'images/cats/gameboy.png',
            image_caption: "Gameboy",
          ), 
          Category(
            image_location: 'images/cats/gamepad.png',
            image_caption: "Console",
          ),
           Category(
            image_location: 'images/cats/headphone.png',
            image_caption: "Accessary",
          ),
           Category(
            image_location: 'images/cats/monitor.png',
            image_caption: "Monitor",
          ),
           Category(
            image_location: 'images/cats/mouse.png',
            image_caption: "Mouse",
          ),
        ]
      ),
    );
  }
}


class Category extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String image_location;
  // ignore: non_constant_identifier_names
  final String image_caption;

 Category({
    // ignore: non_constant_identifier_names
    this.image_caption,
    // ignore: non_constant_identifier_names
    this.image_location
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
            child: InkWell(onTap: (){}, 
                  child: Container(
                          width: 100.0,
                          child: ListTile(
                          title: Image.asset(image_location,
                                  width: 100.0,
                                  height: 40.0,      
                          ),
                          subtitle: Container(
                            alignment: Alignment.topCenter,
                            child: Text(image_caption ,style: new TextStyle(fontSize: 12.0, color: Colors.pink ),),
                          ),
                    ),
                  ),  
            ),
    );
  }
}