
import 'package:flutter/material.dart';
import 'data.dart';
import 'order.dart';
import 'storyApp.dart';
import 'page4.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        // alignment: Alignment.center,
        overflow: Overflow.visible,
        children: <Widget>[
          // Container(
          //     color: Colors.black,
          //     height: 800,

          //     ),
          Container(
            height: 613,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Ingredient:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 80),
                    child: ListD(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 410,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFDE8887),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Story()));
                      },
                      child: Container(
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 200,
                      //margin: EdgeInsets.only(left: 300),
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
                  ],
                ),
               Expanded(child: PageView.builder(
                   itemCount: 3,
                   itemBuilder: (context, i) {
                     return Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: <Widget>[
                       IconButton(
                         icon: Icon(Icons.arrow_back),
                         onPressed: () {},
                         iconSize: 60,
                       ),
                       ConstrainedBox(
                           child: CircleAvatar(backgroundImage: AssetImage('asset/nan.jpg')),
                         constraints: BoxConstraints(
                           minHeight: MediaQuery.of(context).size.width / 2,
                           minWidth: MediaQuery.of(context).size.width / 2,
                           maxHeight: MediaQuery.of(context).size.width / 2,
                           maxWidth: MediaQuery.of(context).size.width / 2,
                         ),
                       ),
                         IconButton(
                           icon: Icon(Icons.arrow_forward),
                           onPressed: () {},
                           iconSize: 60,
                         ),

                     ],);
                   }
               ))
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 72),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 3.0,
                          fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              )
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page4()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            'Appliquer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
