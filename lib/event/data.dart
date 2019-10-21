import 'package:flutter/material.dart';
import 'produictDetail.dart';

class ListV extends StatelessWidget {
  List<String> images = [
    'images/apple.png',
    'images/apple.png',
     'images/apple.png',
    'images/apple.png',

  ];
  List<Color> myColors = [
    Colors.pinkAccent,
    Colors.brown,
    Colors.purpleAccent,
    Colors.red
  ];
  List<String> price = ['\$ 13.00', '\$ 20.00', '\$ 15.00', '\$ 6.50'];
  List<String> title = [
    'Udon Soup With',
    'Soup of week',
    'Soup of Month',
    'Soup of Year',
  ];
  List<String> subtitle = [
    'Chicken',
    'Tomatoes',
    'Apple',
    'Mangoes',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.only(right: 20),
          child: Stack(
            //fit: StackFit.expand,

            children: <Widget>[
              Container(
                // color: Colors.black,
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: myColors[i],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x20000000),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ]),
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(120)),
                  margin: EdgeInsets.only(left: 15, bottom: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                    child: Image.asset(
                      images[i],
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Product()));
                },
                child: Container(
                  height: 50,
                  width: 130,
                  margin: EdgeInsets.only(left: 70),
                  child: Icon(Icons.favorite_border),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      //topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      //bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
//              Container(
//                margin: EdgeInsets.only(top: 200),
//                padding: EdgeInsets.only(left: 20),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(price[i],
//                        style: TextStyle(
//                            fontSize: 30,
//                            color: Colors.white,
//                            fontWeight: FontWeight.bold)),
//                    SizedBox(
//                      height: 6,
//                    ),
//                    Text(title[i],
//                        style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.white,
//                            fontWeight: FontWeight.bold)),
//                    Text(subtitle[i],
//                        style: TextStyle(
//                            fontSize: 20,
//                            color: Colors.white,
//                            fontWeight: FontWeight.bold)),
//                  ],
//                ),
//              )
            ],
          ),
        );
      },
    );
  }
}

class ListD extends StatelessWidget {
  List<String> images = [
    'images/apple.png',
    'images/apple.png',
    'images/apple.png',
    'images/apple.png'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images.length,
      itemBuilder: (context, i) {
        return Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          width: 120,
          margin: EdgeInsets.only(right: 30),
          child: Image.asset(
            images[i],
            height: 50,
          ),
        );
      },
    );
  }
}

class ListF extends StatelessWidget {
  List<String> images = [
    'images/apple.png',
    'images/apple.png',
    'images/apple.png',
  ];
  List<String> title = [
    'Ramen soup with Pork',
    'Udon soup with Chicken',
    'Diet Pepsy',
  ];
  List<String> subtitle = [
    'Entrance 460 g',
    'Entrance 380 g',
    '355 ml',
  ];
  List<String> price = [
    '\$24.00',
    '\$13.00',
    '\$4.00',
  ];
   List<Color> myColors = [
    Colors.pinkAccent,
    Colors.brown,
    Colors.purpleAccent,
    Colors.red
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, i) {
        return Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Row(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 105,
                  width: 120,
                  decoration: BoxDecoration(
                      color: myColors[i],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 30,
                  ),
                  child: Image.asset(
                    images[i],
                    height: 110,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 105),
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Text(
                    "- ${i + 1} +",
                    style: TextStyle(fontSize: 17, letterSpacing: 5.0),
                  ),
                ),
              ]),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    price[i],
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    title[i],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    subtitle[i],
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
