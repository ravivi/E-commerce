import 'package:flutter/material.dart';
import 'page4.dart';
import 'data.dart';
import 'home.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  Color skyBlue = Color.fromRGBO(8, 121, 204, 0.81);

  Color blue = Color.fromRGBO(56, 110, 236, 1);

  Color mainColor = Color.fromRGBO(35, 59, 137, 1);

  @override
  Widget build(BuildContext context) {
    Map<String, Object> args =
        ModalRoute.of(context).settings.arguments as Map<String, Object>;
    //print($id);
    print(args['id']);

    return SafeArea(
      top: true,
      child: Scaffold(
          backgroundColor: skyBlue,
          body: Column(
            children: <Widget>[
          
                 Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            iconSize: 20,
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: blue,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Container(
                              
                              alignment: Alignment.center,
                              width: 200,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: skyBlue,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                                      child: Text(args['name'].toString(), style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w700),),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 300,
                        child: Stack(
                          children: <Widget>[
                            PageView(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: mainColor, width: 7),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black45,
                                              blurRadius: 30,
                                              offset: Offset(10, 10))
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(args['image']),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
//                            borderRadius: BorderRadius.all(Radius.circular(250)),
//                        boxShadow: BoxShadow(color: Colors.gray)
                                      ),
                                      height: 270,
                                      width: 270,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: mainColor, width: 7),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black45,
                                              blurRadius: 30,
                                              offset: Offset(10, 10))
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(args['image']),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
//                            borderRadius: BorderRadius.all(Radius.circular(250)),
//                        boxShadow: BoxShadow(color: Colors.gray)
                                      ),
                                      height: 270,
                                      width: 270,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: mainColor, width: 7),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black45,
                                              blurRadius: 30,
                                              offset: Offset(10, 10))
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(args['image']),
                                            fit: BoxFit.cover),
                                        color: Colors.white,
//                            borderRadius: BorderRadius.all(Radius.circular(250)),
//                        boxShadow: BoxShadow(color: Colors.gray)
                                      ),
                                      height: 270,
                                      width: 270,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {},
                                  color: skyBlue,
                                  iconSize: 40,
                                )),
                            Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {},
                                  color: skyBlue,
                                  iconSize: 40,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        child: Stack(
                          children: <Widget>[
                            PageView(
                              children: <Widget>[
                                Align(
                                  child: Text('Participants',
                                      style: TextStyle(
                                          color: skyBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  alignment: AlignmentDirectional.center,
                                ),
                                Align(
                                  child: Text('Promoteurs',
                                      style: TextStyle(
                                          color: skyBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  alignment: AlignmentDirectional.center,
                                ),
                                Align(
                                  child: Text('Vente de tickets',
                                      style: TextStyle(
                                          color: skyBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30)),
                                  alignment: AlignmentDirectional.center,
                                ),
                              ],
                            ),
                            Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  onPressed: () {},
                                  color: skyBlue,
                                  iconSize: 40,
                                )),
                            Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {},
                                  color: skyBlue,
                                  iconSize: 40,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: 100,
                          ),
                          child: ListView.builder(
                            itemCount: 5,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    right: 5, bottom: 0, left: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10)
                                      ]),
                                  height: 60,
                                  width: 150,
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          
                              Container(
                                alignment: Alignment.center,
                                height: 100,
                                width:
                                    MediaQuery.of(context).size.width / 2 - 50,
                                
                                child: Text(
                                  'Detail',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                               height: 100,
                                width:
                                    MediaQuery.of(context).size.width / 2,
                                child: Text('Participer',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                  )
                                ),
                              ),
                        ],
                      ),
                    
                ),
              ),
            ],
          )),
    );
  }
}
