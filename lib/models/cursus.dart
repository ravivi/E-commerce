import 'dart:convert';

import 'package:flutter/services.dart'show rootBundle;

class Video {
  final String titre;
  final String lien;

  Video({this.titre, this.lien});
  factory Video.fromJson(Map<String, dynamic>json){
    return Video(
      titre: json['titre'],
      lien: json['lien']

    );
  }
  
  
}
class ListVideo {
  final List<Video> listVideo;

  ListVideo({this.listVideo});
    factory ListVideo.fromJson(List<dynamic>json){
          List<Video> arr = new List<Video>();
    arr = json.map((f)=> Video.fromJson(f)).toList();
    return ListVideo(
      listVideo: arr,
    );
  }
}
class Cour {
  final String titre;
  final ListVideo videolist;

  Cour({this.titre, this.videolist});
    factory Cour.fromJson(Map<String, dynamic>json){
    return Cour(
      titre: json['titre'],
      videolist: ListVideo.fromJson(json['video'])

    );
  } 
}
class ListCour {
  final List<Cour> listCour;

  ListCour({this.listCour});
    factory ListCour.fromJson(List<dynamic>json){
          List<Cour> arr = new List<Cour>();
    arr = json.map((f)=> Cour.fromJson(f)).toList();
    return ListCour(
      listCour: arr,
    );
  }
}
class Stage {
  final String nom;
  final ListCour courList;

  Stage({this.nom, this.courList});
  factory Stage.fromJson(Map<String, dynamic> json){
    return Stage(
      nom: json['nom'],
      courList: ListCour.fromJson(json['cour'])
    );
  }
}
class ListStage {
  final List<Stage> listStage;

  ListStage({this.listStage});
    factory ListStage.fromJson(List<dynamic>json){
          List<Stage> arr = new List<Stage>();
    arr = json.map((f)=> Stage.fromJson(f)).toList();
    return ListStage(
      listStage: arr,
    );
  }
}
class Level {
  final String nom;
  final String image;
  final ListStage stageList;

  Level({this.nom, this.image, this.stageList});
    factory Level.fromJson(Map<String, dynamic> json){
    return Level(
      nom: json['nom'],
      image: json['image'],
      stageList: ListStage.fromJson(json['stage'])
    );
  }
  
}

class ListLevel {
  final List<Level> listlevel;

  ListLevel({this.listlevel});
    factory ListLevel.fromJson(List<dynamic>json){
          List<Level> arr = new List<Level>();
    arr = json.map((f)=> Level.fromJson(f)).toList();
    return ListLevel(
      listlevel: arr,
    );
  }
}

class Cursus {
  final String nom;
  final String image;
  final ListLevel levelList;

  Cursus({this.nom, this.image, this.levelList});
    factory Cursus.fromJson(Map<String, dynamic> json){
    return Cursus(
      nom: json['nom'],
      image: json['image'],
      levelList: ListLevel.fromJson(json['level'])
    );
  }
  
}

class ListCursus {
  final List<Cursus> listcursus;

  ListCursus({this.listcursus});
    factory ListCursus.fromJson(List<dynamic>json){
          List<Cursus> arr = new List<Cursus>();
    arr = json.map((f)=> Cursus.fromJson(f)).toList();
    return ListCursus(
      listcursus: arr,
    );
  }
  Future<String> loadCursusJson() async{
    return await rootBundle.loadString("asset/cursus.json"); 
}
  Future getListCursus() async{
    final res = await loadCursusJson();
    Iterable list = json.decode(res);
    List<Cursus> arr = list.map((item)=> Cursus.fromJson(item)).toList();
    return arr;
  }
}