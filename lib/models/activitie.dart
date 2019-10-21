import 'dart:convert';

class Activity{
  final int id;
  final String type;

  Activity({this.id, this.type});

  factory Activity.fromJson(Map<String, dynamic> json){
    return Activity(
      id: json['id'],
      type : json['type']
    );
  }
  
}
class ActivityList{
  final List<Activity> listActivity;

  ActivityList({this.listActivity});

  factory ActivityList.fromJson(List<dynamic> json){
    List<Activity> boucle = new List<Activity>();
    boucle = json.map((f)=>Activity.fromJson(f)).toList();
    return ActivityList(
      listActivity: boucle
    );
  }
  
}


class User{
  final int id;
  final String nom;
  final Activity activity; 

 User({this.id, this.nom, this.activity});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
      id: json['id'],
      nom : json['nom'],
      activity: Activity.fromJson(json['activities'])
    );
  }
} 

//////////////////////////////////////////////////////////////////////////////////////////













class  Ville {
  final int id;
  final String ville;

  Ville({this.id, this.ville}); 

  factory Ville.fromJson(Map<String, dynamic> json){

    return Ville(
      id: json['id'],
      ville: json['ville'],
    );

  }
  
}

class  ListVille {
  final List<Ville> listVille;
  ListVille({this.listVille});

  factory ListVille.fromJson(List<dynamic> json){
    List<Ville> boucle = new List<Ville>();
    boucle = json.map((item)=>Ville.fromJson(item)).toList();

    return ListVille(
     listVille: boucle
    );

  }
  
}


class  Pays {
  final int id;
  final String pays;

  Pays({this.id, this.pays}); 

  factory Pays.fromJson(Map<String, dynamic> json){

    return Pays(
      id: json['id'],
      pays: json['pays'],
    );

  }
  
}

class  ListPays {
  final List<Pays> listPays;
  ListPays({this.listPays});

  factory ListPays.fromJson(List<dynamic> json){
    List<Pays> boucle = new List<Pays>();
    boucle = json.map((item)=>Pays.fromJson(item)).toList();

    return ListPays(
      listPays: boucle

    );

  }
  
}

class Lieu {
  final ListVille ville;
  final ListPays pays;

  Lieu({this.ville, this.pays});
  factory Lieu.fromJson(Map<String, dynamic> json){
    print(json);
    return Lieu(
      ville: ListVille.fromJson(json['ville']),
      pays: ListPays.fromJson(json['Pays']),
    );
  }

}

class UserZ {
  final int id;
  final String nom;
  final Lieu lieu;

  UserZ({this.id, this.nom,this.lieu});

  factory UserZ.fromJson(Map<String, dynamic> json){
    return UserZ(
      id: json['id'],
      nom: json['nom'],
      lieu: Lieu.fromJson(json['lieu'])
    );
  }

  
}