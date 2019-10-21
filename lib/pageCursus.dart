import './models/cursus.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PageCursus extends StatefulWidget {
  @override
  _PageCursusState createState() => _PageCursusState();
}

class _PageCursusState extends State<PageCursus> {
  List<Cursus> liste = [];
  List<String> listImage=[
    "images/boost.png",
    "images/php.png",
    "images/js.png",
    "images/mysql.png",
    "images/ccna.png",
    "images/linux.png",
    "images/go.png",
    "images/python.png",
    "images/flutter.png",

  ];
  @override
  initState() {
    charge();
    super.initState();
  }

  Future charge() async {
    print('Chagement.......................');
    List<Cursus> myList = await ListCursus().getListCursus();
    // print(myList);
    setState(() {
      liste = myList;
    });
  }
  parti(String name){
 Navigator.pushNamed(context, 'cursus',arguments: liste.firstWhere((i)=>i.nom==name));

  }

  @override
  Widget build(BuildContext context) {
    //print(liste[0].image);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cursus NaN',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
          ),
          itemCount: liste.length,
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                 color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    listImage[i],
                    fit: BoxFit.contain,
                    height:90,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: InkWell(
                      onTap: () {
                        parti(liste[i].nom);
                      },
                      child: Chip(
                        avatar: CircleAvatar(
                          child: Icon(Icons.school),
                          backgroundColor: Colors.white,
                        ),
                        label: Text(
                          liste[i].nom,
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
