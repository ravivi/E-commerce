import 'package:event/service/apiCat.dart';
import 'package:event/service/apiCursus.dart';
import 'package:event/service/apiEvent.dart';
import 'package:flutter/material.dart';
import 'backend.dart';
import 'data.dart';

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}

class HomeEvent extends StatefulWidget {
  @override
  _HomeEventState createState() => _HomeEventState();
}

class _HomeEventState extends State<HomeEvent> {
  Color skyBlue = Color.fromRGBO(8, 121, 204, 0.81);
  Color blue = Color.fromRGBO(56, 110, 236, 1);
  Color mainColor = Color.fromRGBO(35, 59, 137, 1);

  Widget list() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 50,
        maxHeight: 80,
        maxWidth: double.infinity,
      ),
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                child: ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: blue,
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(100),
//                      topRight: Radius.circular(100),
//                      bottomRight: Radius.circular(30),
//                      bottomLeft: Radius.circular(30),
//                    ),
                    ),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Asian',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    loadCursus();
    //loadEvent();
    //loadCat();
    return SafeArea(
      top: true,
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: blue,
            child: Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: IconButton(
                              icon: Icon(Icons.settings),
                              color: Colors.white,
                              iconSize: 40,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
                              BoxConstraints(minWidth: 90, minHeight: 90),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('asset/nan.jpg'),
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Un nanien',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            )
                          ],
                        ),
                        SizedBox(height: 10)
                      ],
                    )),
                Divider(
                  height: 5,
                  color: Colors.white,
                ),
                SizedBox(height: 100),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'ajouter');
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Ajouter',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.list,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Ma liste',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Deconnexion',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            color: blue,
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: IconButton(
                  icon: Icon(Icons.alarm),
                  onPressed: () {},
                  iconSize: 30,
                  color: Colors.white,
                )),
                Expanded(
                    child: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () {},
                  iconSize: 30,
                  color: Colors.white,
                )),
                Expanded(
                    child: IconButton(
                  icon: Icon(Icons.timelapse),
                  onPressed: () {},
                  iconSize: 30,
                  color: Colors.white,
                )),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  'CATEGORIES',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                maxHeight: 80,
                maxWidth: double.infinity,
              ),
              child: FutureBuilder(
                  future: getcategories(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      List<dynamic> categories = snapshot.data;
                      return ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            int id = categories[i]['id'];
                            String name = categories[i]['nom'];
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: GestureDetector(
                                onTap: () {
//                              Navigator.pushNamed(context, 'details')
                                },
                                child: ClipPath(
                                  clipper: TriangleClipper(),
                                  child: Container(
                                    padding: EdgeInsets.only(top: 10),
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: blue,
//                    borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(100),
//                      topRight: Radius.circular(100),
//                      bottomRight: Radius.circular(30),
//                      bottomLeft: Radius.circular(30),
//                    ),
                                    ),
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          name,
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ),
                              ),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Text('EVENTS',
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: FutureBuilder(
                  future: getEvents(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      List<dynamic> event = snapshot.data;
                      return ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          itemCount: event.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            String company =
                                event[i]['id_compagnie']['nom_compagnie'];
                            String adressCompagny =
                                event[i]['id_compagnie']['addresse'];
                            
                            int id = event[i]['id'];
                            String name = event[i]['nom_event'];
                            String begin = event[i]['date_debut'];
                            String end = event[i]['date_fin'];
                            String location = event[i]['lieu'];
                            String image = event[i]['image_event'][0]['images'];

                            String emailCompagny =
                                event[i]['id_compagnie']['email'];
                            String contactCompagny =
                                event[i]['id_compagnie']['contact'];
                            List contactFul = [];
                            String nom_user = event[5]['participant_evenement']
                                    [0]['id_utilisateur']['user']['username']
                                .toString();
                            //  vraiContact(){
                            // String contact = event[i]['participant_evenement'][0]['id_utilisateur']['contact'].toString();
                            //     contactFul.add(contact);
                            //   for (var i=1; i<contactFul.length; i++){
                            //     if(contactFul[i] == null){
                            //       print("null");
                            //     }else{
                            //       print("object");
                            //     }
                            //   }
                            //  }
                            print(nom_user);
                            return ConstrainedBox(
                              constraints: BoxConstraints(maxHeight: 350),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 50, top: 10),
                                child: Stack(
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed('event',
                                            arguments: {
                                              'id': id,
                                              'name': name,
                                              'image': image
                                            });
                                        print(id);
                                      },
                                      child: Container(
                                        height: 300,
                                        width: 200,
                                        padding: EdgeInsets.all(25),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(image),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x20000000),
                                                blurRadius: 10,
                                                offset: Offset(0, 5),
                                              ),
                                            ]),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Detail',
                                              style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 23,
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                            Text(
                                              name,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            Text(
                                              location,
                                              style: TextStyle(
                                                color: Colors.lightGreenAccent,
                                                fontSize: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: -30,
                                      top: -10,
                                      child: InkWell(
                                        onTap: () {
                                          showModalSheet(company, adressCompagny, emailCompagny, contactCompagny);
//                                          Navigator.push(context,
//                                              MaterialPageRoute(builder: (context) => Event()));
                                        },
                                        child: ClipOval(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 110,
                                            width: 120,
//                      margin: EdgeInsets.only(left: 70),
                                            child: Text(
                                              company.toUpperCase(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius: BorderRadius.only(
                                                //topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                //bottomRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void showModalSheet(String arg1, String arg2, String arg3, String arg4) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (builder) {
                                    return Container(
                                      height: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                child: CircleAvatar(
                                                backgroundColor: Colors.orange,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 10),
                                                child: Text(
                                                  arg1,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                            onTap: () {}, //launchUrl,

                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  top: 2,
                                                  bottom: 2),
                                              child: Chip(
                                                avatar: CircleAvatar(
                                                  child: Icon(Icons.local_mall),
                                                  backgroundColor: Colors.white,
                                                ),
                                                label: Text(
                                                  arg2,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: Colors.white,
                                                elevation: 4,
                                                shadowColor: Colors.grey[40],
                                                padding: EdgeInsets.all(4),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              //launchUrl2('jeremiedry@gmail.com', "Question sur Exercice complet", 'Bonjour Octave');
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  top: 2,
                                                  bottom: 2),
                                              child: Chip(
                                                avatar: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/gmail.png'),
                                                  backgroundColor: Colors.white,
                                                ),
                                                label: Text(
                                                  arg3,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                backgroundColor: Colors.red,
                                                elevation: 4,
                                                shadowColor: Colors.grey[40],
                                                padding: EdgeInsets.all(4),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              //launchUrl2('jeremiedry@gmail.com', "Question sur Exercice complet", 'Bonjour Octave');
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  top: 2,
                                                  bottom: 2),
                                              child: Chip(
                                                avatar: CircleAvatar(
                                                  child: Icon(Icons.phone),
                                                 
                                                  backgroundColor: Colors.white,
                                                ),
                                                label: Text(
                                                  arg4,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                backgroundColor: Colors.blue,
                                                elevation: 4,
                                                shadowColor: Colors.grey[40],
                                                padding: EdgeInsets.all(4),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            }

}
