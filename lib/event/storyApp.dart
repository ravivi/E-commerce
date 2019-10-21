import 'package:event/event/models/event.dart';
import 'package:flutter/material.dart';
import 'data.dart';
import 'models/cat.dart';
import '.././service/apiEvent.dart';
import '.././service/apiCat.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}


class _StoryState extends State<Story> {
  Map<Categorie, List<Event>> cats = {};



  Widget list() {

    List<Categorie> categories = cats.keys.toList();

    return
         ListView.builder(
          itemCount: cats.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return  Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: GestureDetector(
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        categories[i].nom,
                        style: TextStyle(color: Colors.greenAccent),
                      )),
                ),
              ),
            );
          }
      );
  }


  Future getCats() async{
    Map<Categorie, List<Event>> res = await Categorie().getCats();
    if (res != null){
      setState(() {
        cats = res;
        print(res);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getCats();
  }

  @override
  Widget build(BuildContext context) {
    loadEvent();
    //loadCat();
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height / 3,
             decoration: BoxDecoration(
               color: Colors.blue
             ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
             ConstrainedBox(
               constraints: BoxConstraints(
                 minWidth: 90,
                 minHeight: 90
               ),
               child: CircleAvatar(
                 backgroundImage: AssetImage('asset/nan.jpg'),
               ),
             ),
             SizedBox(height: 25),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text('Un', style: TextStyle(fontSize: 20, color: Colors.white)),
               SizedBox(width: 30),
               Text('nanien', style: TextStyle(fontSize: 20, color: Colors.white)),
             ],
           )],)
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
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Ajouter',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
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
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Ma liste',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
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
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Deconnexion',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ),
          ],
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              title: Text('')),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text('Categorie',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 25,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 50,
                maxWidth: double.infinity,
              ),
              child: (cats !=null)?list(): Row(
                children: <Widget>[
                  CircularProgressIndicator()
                ],
              ),
            ),
              SizedBox(
              height: 20,
            ),
            Container(
              child: Text('Evenements',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),

            SizedBox(
              height: 30,
            ),
          Expanded(
            child: ListV(),
          )

          ],
        ),
      ),
    );
  }
}


