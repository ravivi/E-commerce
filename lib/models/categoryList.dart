class CategoryList{
  final List<Categories> listCats;
  CategoryList({this.listCats});


  factory CategoryList.fromJson(List<dynamic> json)
  {

    List<Categories> arr = new List<Categories>();
    arr = json.map((f)=> Categories.fromJson(f)).toList();
    return CategoryList(
       listCats: arr
    );
  }



//   Future getEvenement(id) async{
//     final response = await http.get('http://51.77.197.177/event/${id}');

//     if(response.statusCode == 200)
//     {
//       return Evenement.fromJson(json.decode(response.body));

//     }
//     else{
//       throw Exception('Impossible de charger les donnes');
//     }
//   }

//   Future getParticipants() async {
//     final response = await http.get('http://51.77.197.177/event/');
//     if(response.statusCode == 200)
//     {
//       Iterable list = json.decode(response.body);
//       List<Evenement> arr =  list.map((model){
//         return Evenement.fromJson(model);
//       }).toList();
//       print(arr);
//       return arr;

//     }
//     else
//     {
//       throw Exception('Impossible de charger les donnes');
//     }
//   }
// 
}

class Categories {
  final int id;
  final String nom;
  final Categorie_evenement categorie_evenement;

  Categories({this.id, this.nom, this.categorie_evenement});

  factory Categories.fromJson(Map<String, dynamic>json)
  {
    return Categories(
        id: json['id'],
        nom: json['nom'],
        categorie_evenement: Categorie_evenement.fromJson(json['categorie_evenement'])
    );
  }
}

class Categorie_evenement {
  final List<Evenement> evenement;
  Categorie_evenement({this.evenement});
  factory Categorie_evenement.fromJson(List<dynamic> json){
    List<Evenement> boucle = new List<Evenement>();
    boucle = json.map((item)=>Evenement.fromJson(item)).toList();
    return Categorie_evenement(
      evenement: boucle
    );
  }
}

class Evenement{
  final int id;
  final String nom_event;
  final String date_debut;
  final String date_fin;
  final String description;
  final String lieu;
  final String date_add;
  final String date_upd;
  final Categorie categorie;
  final Commune commune;
  final Compagnie compagnie;
  final ParticipantList participantList;
  final ImageList image;

  Evenement({this.id, this.nom_event, this.date_debut, this.date_fin,
    this.description, this.lieu, this.date_add, this.date_upd, this.categorie, this.commune, this.compagnie, this.participantList, this.image});

  factory Evenement.fromJson(Map<String, dynamic>json)
  {
    return Evenement(
      id: json['id'],
      nom_event: json['nom_event'],
      date_debut: json['idate_debutd'],
      date_fin: json['date_fin'],
      description: json['description'],
      lieu: json['lieu'],
      date_add: json['date_add'],
      date_upd: json['date_upd'],
      categorie: Categorie.fromJson(json['id_categorie']),
      commune: Commune.fromJson(json['id_commune']),
      compagnie: Compagnie.fromJson(json['id_compagnie']),
      participantList: ParticipantList.fromJson(json['participant_evenement']),
      image: ImageList.fromJson(json['image_event'])

    );
  }

}
class Categorie {
  final int id;
  final String nom;

  Categorie({this.id, this.nom});

  factory Categorie.fromJson(Map<String, dynamic>json)
  {
    return Categorie(
        id: json['id'],
        nom: json['nom']
    );
  }
}
class Commune{
  final int id;
  final String nom;

  Commune({this.id, this.nom});

  factory Commune.fromJson(Map<String, dynamic>json)
  {
    return Commune(
        id: json['id'],
        nom: json['nom']
    );
  }
}

class Compagnie{
  final int id;
  final String nom_compagnie;
  final String addresse;
  final String email;
  final String contact;
  final String password;
  final String status;

  Compagnie({this.id, this.nom_compagnie, this.addresse, this.email,
    this.contact, this.password, this.status});

  factory Compagnie.fromJson(Map<String, dynamic>json)
  {
    return Compagnie(
        id: json['id'],
      nom_compagnie: json['nom_compagnie'],
      addresse: json['addresse'],
      email: json['email'],
      contact: json['contact'],
      password: json['password'],
      status: json['status'].toString(),

    );
  }


}

class ParticipantList{
  final List<Participant> listParticipants;
  ParticipantList({this.listParticipants});


  factory ParticipantList.fromJson(List<dynamic> json)
  {

    List<Participant> arr = new List<Participant>();
    arr = json.map((f)=> Participant.fromJson(f)).toList();
    return ParticipantList(
        listParticipants: arr
    );
  }
}


class Participant{
 final Utilisateur utilisateur;

 Participant({this.utilisateur});
 factory Participant.fromJson(Map<String, dynamic>json)
 {
   return Participant(
    utilisateur: Utilisateur.fromJson(json['id_utilisateur'])
   );
 }


}

class Utilisateur{
  final int id;
  final String contact;
  final String status;
  final Commune commune;
  final User user;

  Utilisateur({this.id, this.contact, this.status, this.commune, this.user});


  factory Utilisateur.fromJson(Map<String, dynamic>json)
  {
    return Utilisateur(
      id: json['id'],
      contact: json['contact'],
      status: json['status'].toString(),
      commune: Commune.fromJson(json['id_commune']),
      user: User.fromJson(json['user'])

    );
  }

}

class User{
  final int id;
  final String password;
  final String is_superuser;
  final String username;
  final String first_name;
  final String last_name;
  final String email;
  final String is_staff;
  final String is_active;

  User({this.id, this.password, this.is_superuser, this.username,
  this.first_name, this.last_name, this.email, this.is_staff,
  this.is_active});

  factory User.fromJson(Map<String, dynamic>json)
  {
    return User(
      id: json['id'],
      password: json['password'],
      is_superuser: json['is_superuser'].toString(),
      username: json['username'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      email: json['email'],
      is_staff: json['is_staff'].toString(),
      is_active: json['is_active'].toString(),

    );
  }

}
class ImageList{
  final List<Image> imageList;

  ImageList({this.imageList});


  factory ImageList.fromJson(List<dynamic> json)
  {
    List<Image> arr = new List<Image>();
    arr = json.map((f)=> Image.fromJson(f)).toList();
    return ImageList(
        imageList: arr
    );
  }

}

class Image{
  final int id;
  final String images;
  final String status;
  final Event event;

  Image({this.id, this.images, this.status, this.event});


  factory Image.fromJson(Map<String, dynamic>json)
  {
    return Image(
      id: json['id'],
      images: json['images'],
      status: json['status'].toString(),
      event: Event.fromJson(json['event']),

    );
  }

}

class Event{
  final int id;
  final String  nom_event;
  final String date_debut;
  final String date_fin;
  final String description;
  final String lieu;
  final String status;

  Event({this.id, this.nom_event, this.date_debut, this.date_fin,
    this.description, this.lieu, this.status});

  factory Event.fromJson(Map<String, dynamic>json)
  {
    return Event(
      id: json['id'],
      nom_event: json['nom_event'],
      date_debut: json['date_debut'],
      date_fin: json['date_fin'],
      description: json['description'],
      lieu: json['lieu'],
      status: json['status'].toString(),
    );
  }
}


