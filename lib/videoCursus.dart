import 'package:event/models/cursus.dart';
import 'package:flutter/material.dart';


class VideoCursus extends StatefulWidget {
  @override
  _VideoCursusState createState() => _VideoCursusState();
}

class _VideoCursusState extends State<VideoCursus> {
  @override
  Widget build(BuildContext context) {
          var args =
        ModalRoute.of(context).settings.arguments as Cour;
        print('notre typs ${args.titre}');
        //print();
          // parti(String name){
          // Navigator.pushNamed(context, 'video',arguments: args..firstWhere((i)=>i.titre==name));
          // }
    return Scaffold(
      appBar: AppBar(
        title: Text(args.titre, style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
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
          itemCount: args.videolist.listVideo.length,
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/ferra.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
                    child: InkWell(
                      onTap: () {
                        //parti(args.nom);
                        //Navigator.pushNamed(context, '',arguments: {'nom':liste[i].nom});
                      },
                      child: Chip(
                        avatar: CircleAvatar(
                          child: Icon(Icons.school),
                          backgroundColor: Colors.white,
                        ),
                        label: Text(args.videolist.listVideo[i].titre,
                          //args.nom,
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

