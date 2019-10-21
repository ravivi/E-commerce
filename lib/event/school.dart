import 'package:flutter/material.dart';

class School extends StatefulWidget {
  final String title;
  School({Key key, this.title}) : super(key: key);
  @override
  _SchoolState createState() => _SchoolState();
}

class _SchoolState extends State<School> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/maison.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height/7,
                    bottom: MediaQuery.of(context).size.height/3.2,
                    left: MediaQuery.of(context).size.height/10,
                    right: MediaQuery.of(context).size.height/10,

                      child: Container(
                        height: 48,
                        width: 100,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius:
                            BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            'Enregistrement',
                            style: TextStyle(
                              fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                )
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Valider'),
            )
          ],
        ),
      ),
    );
  }
}

class SchoolSecond extends StatelessWidget {
  final Color textColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        image: DecorationImage(
                            image: AssetImage('images/maison.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.red,
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                    ),
                  ),
                  Positioned(
                    left: 8,
                    top: 48,
                    right: 38,
                    child: Container(
                      height: 60,
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                          Spacer(),
                          Text(
                            'School',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 6.5,
                    bottom: 0,
                    left: 16,
                    right: 16,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 24, left: 16, right: 16, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(34),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.red[400], width: 2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.school,
                                  size: 38,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'St Dreamwalker School',
                              style: TextStyle(
                                color: Colors.indigo[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.red[200],
                                ),
                                Text("574 Sébastien Arcarde, Ny, 123456"),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.phone,
                                  color: Colors.red[200],
                                ),
                                Text("255-771-299-51"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    width: MediaQuery.of(context).size.width - 40,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                LimitedBox(
                                  maxHeight: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Gender',
                                          style: TextStyle(
                                              color: textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      SizedBox(height: 5),
                                      Text('Male',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 4),
                                  child: Divider(height: 2, color: Colors.grey),
                                ),
                                LimitedBox(
                                  maxHeight: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Date of Birth',
                                          style: TextStyle(
                                              color: textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      SizedBox(height: 5),
                                      Text('05 March, 2000',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 4),
                                  child: Divider(height: 2, color: Colors.grey),
                                ),
                                LimitedBox(
                                  maxHeight: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Class',
                                          style: TextStyle(
                                              color: textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      SizedBox(height: 5),
                                      Text('9th',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(vertical: 4),
                                  child: Divider(height: 2, color: Colors.grey),
                                ),
                                LimitedBox(
                                  maxHeight: 45,
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Division',
                                          style: TextStyle(
                                              color: textColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      SizedBox(height: 5),
                                      Text('A',
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.green[600],
                child: Text('Update Profile'),
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Stack(
//           fit: StackFit.expand,
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(25),
//                           bottomRight: Radius.circular(25),
//                         ),
//                         image: DecorationImage(
//                             image: AssetImage('images/fefe.png'),
//                             fit: BoxFit.cover)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         IconButton(icon: Icon(Icons.arrow_back_ios),color: Colors.white ,onPressed: () {}),
//                         Text('Profile', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold)),
//                         IconButton(icon: Icon(Icons.edit),color: Colors.white ,onPressed: () {}),

//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 4,
//                   child: Container(),
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 110, left: 10, right: 10),
//               child: Column(
//                 children: <Widget>[
//                   Card(
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25))
//                     ),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(vertical: 40),
//                       width: MediaQuery.of(context).size.width - 40,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: <Widget>[
//                           Container(
//                             height: 70,
//                             width: 70,
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.orange, width: 1),
//                                 borderRadius: BorderRadius.all(Radius.circular(50)),
//                                 image: DecorationImage(
//                                     image: AssetImage('images/rav.jpg'),
//                                     fit: BoxFit.cover
//                                 )
//                             ),
//                           ),
//                           Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 15.0),
//                               child: Text('St. Xavier School', style: TextStyle(
//                                   color: textColor,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20
//                               ))
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(Icons.add_location, color: Colors.orange, size: 20),
//                               Text('526 Sebastin arcade, NY, 12456', style: TextStyle(
//                                   color: textColor,
//                                   fontSize: 16
//                               ),)
//                             ],),
//                           SizedBox(height: 15),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(Icons.phone, color: Colors.orange, size: 20),
//                               Text('+225 771 299 51', style: TextStyle(
//                                   color: textColor,
//                                   fontSize: 16
//                               ),)
//                             ],),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Card(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(25))
//                       ),
//                       child: Container(
//                         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                         width: MediaQuery.of(context).size.width - 40,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.max,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                           Padding(
//                             padding: const EdgeInsets.all(10),
//                             child: Container(
//                               width: double.infinity,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   LimitedBox(
//                                     maxHeight: 45,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text('Gender', style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
//                                         SizedBox(height: 5),
//                                         Text('Male', style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w300)),
//                                       ],),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 4),
//                                     child: Divider(height: 2, color: Colors.grey),
//                                   ),
//                                   LimitedBox(
//                                     maxHeight: 45,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text('Date of Birth', style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
//                                         SizedBox(height: 5),
//                                         Text('05 March, 2000', style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w300)),
//                                       ],),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 4),
//                                     child: Divider(height: 2, color: Colors.grey),
//                                   ),
//                                   LimitedBox(
//                                     maxHeight: 45,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text('Class', style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
//                                         SizedBox(height: 5),
//                                         Text('9th', style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w300)),
//                                       ],),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 4),
//                                     child: Divider(height: 2, color: Colors.grey),
//                                   ),
//                                   LimitedBox(
//                                     maxHeight: 45,
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: <Widget>[
//                                         Text('Division', style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 18)),
//                                         SizedBox(height: 5),
//                                         Text('A', style: TextStyle(color: textColor, fontSize: 15, fontWeight: FontWeight.w300)),
//                                       ],),
//                                   ),
//                               ],),
//                             ),
//                           ),
//                         ],)
//                       ),
//                     ),
//                   ),
//                   MaterialButton(
//                     onPressed: () {},
//                     textColor: Colors.white,
//                     color: Colors.green[600],
//                     child: Text('Update Profile'),
//                     height: 50,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
//                   )
//                 ],

//               ),
//             ),
//           ],
//         )
