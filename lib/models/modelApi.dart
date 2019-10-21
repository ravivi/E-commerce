import 'dart:convert';

import 'package:flutter/material.dart';

class ListCatEvent {
  List<CatEvent> catEvent; 
  ListCatEvent({this.catEvent}); 

  factory ListCatEvent.fromJson(List<dynamic> json){
     List<CatEvent> boucle = new List<CatEvent>();
    boucle = json.map((f)=>CatEvent.fromJson(f)).toList();
    return ListCatEvent(
      catEvent: boucle
    );
  }
}

class CatEvent {
  final int id;
  final String nom;
  ListEvent listEvent;

  CatEvent({this.id, this.nom, this.listEvent});
factory CatEvent.fromJson(Map<String,dynamic> json){
  return CatEvent(
    id: json['id'],
    nom: json['nom'],
    listEvent: ListEvent.fromJson(json["categorie_evenement"])

  );
}

}

class ListEvent {
  final int id;
  final String nom_event;
  final String lieu;
  final String debut;
  final String fin;
  final String description;
  IdCategorie idCategorie;
  IdCommune idCommune;
  IdCompagnie idCompagnie;
  List<ImageE> image;

  ListParticipant listParticipant;

ListEvent({this.id, this.nom_event, this.lieu, this.debut, this.fin, this.description, this.listParticipant});
factory ListEvent.fromJson(Map<String,dynamic> json){
 
  return ListEvent(
    id: json['id'],
    listParticipant: ListParticipant.fromJson(["participant_evenement"])

  );
}
   
}
class IdCategorie {
  final int id;
  final String nom;
  final bool status;

  IdCategorie(this.id, this.nom, this.status);
  
}
class IdCommune {
  final int id;
  final String nom_commune;
  final bool status;

  IdCommune(this.id, this.nom_commune, this.status);

  
}
class IdCompagnie {
  final int id;
  final String nom_compagnie;
  final String adresse;
  final String email;
  final String contact;
  final bool status;

  IdCompagnie(this.id, this.nom_compagnie, this.adresse, this.email, this.contact, this.status);
  
}

class ImageE {
  List<ListImage> listImage;
  ImageE({this.listImage});
}

class ListImage {
  final int id;
  final String images;
  ImageEvent imageEvent;

  ListImage(this.id, this.images, this.imageEvent);
}
class ImageEvent {
  final int id;
  final String nom_event;

  ImageEvent({this.id, this.nom_event});
  factory ImageEvent.fromJson(Map<String, dynamic> json){
    
  }

}

class ListParticipant {
  List <InfoUser> infoUser;

  ListParticipant({this.infoUser});
  factory ListParticipant.fromJson(List<dynamic> json){
     List<InfoUser> boucle = new List<InfoUser>();
    boucle = json.map((f)=>InfoUser.fromJson(f)).toList();
    return ListParticipant(
      infoUser: boucle
    );
  }
  
}

class InfoUser {
  final int id;
  final bool status;
  IdUtilisateur idUtilisateur;
  //IdEvent idEvent;

  InfoUser({this.id, this.status,this.idUtilisateur});
  factory InfoUser.fromJson(Map<String,dynamic> json){
    return InfoUser(
      id: json['id'],
      status: json['status'],
      idUtilisateur: IdUtilisateur.fromJson(json['id_utilisateur']),

    );
  }

}

class IdUtilisateur {
  final int id;
  final String contact;
  final bool status;
  User user;

  IdUtilisateur({this.id, this.contact, this.status, this.user});
  factory IdUtilisateur.fromJson(Map<String, dynamic> json){
    return IdUtilisateur(
      id: json['id'],
      contact: json['contact'],
      status: json['status'],
      user: User.fromJson(json['user'])
    );

  }
}
class User {
  final String username;

  User({this.username});

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      username: json['username']
    );
  }
  
}

class IdEvent {
  
 }



















// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// class IdUtilisateur {
//     int id;
//     String contact;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     User user;
//     Welcome idCommune;

//     IdUtilisateur({
//         this.id,
//         this.contact,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.user,
//         this.idCommune,
//     });

//     // factory IdUtilisateur.fromRawJson(String str) => IdUtilisateur.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory IdUtilisateur.fromJson(Map<String, dynamic> json) => IdUtilisateur(
//         id: json["id"],
//         contact: json["contact"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         user: User.fromJson(json["user"]),
//         idCommune: Welcome.fromJson(json["id_commune"]),
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "contact": contact,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "user": user.toJson(),
//     //     "id_commune": idCommune.toJson(),
//     // };
// }

// class ParticipantEvenement {
//     int id;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     IdUtilisateur idUtilisateur;
//     Ent idEvent;

//     ParticipantEvenement({
//         this.id,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.idUtilisateur,
//         this.idEvent,
//     });

//     // factory ParticipantEvenement.fromRawJson(String str) => ParticipantEvenement.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory ParticipantEvenement.fromJson(Map<String, dynamic> json) => ParticipantEvenement(
//         id: json["id"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         idUtilisateur: IdUtilisateur.fromJson(json["id_utilisateur"]),
//         idEvent: Ent.fromJson(json["id_event"]),
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "id_utilisateur": idUtilisateur.toJson(),
//     //     "id_event": idEvent.toJson(),
//     // };
// }

// class Ent {
//     int id;
//     List<ParticipantEvenement> participantEvenement;
//     List<ImageEvent> imageEvent;
//     String nomEvent;
//     DateTime dateDebut;
//     DateTime dateFin;
//     String description;
//     String lieu;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     Welcome idCategorie;
//     Welcome idCommune;
//     IdCompagnie idCompagnie;

//     Ent({
//         this.id,
//         this.participantEvenement,
//         this.imageEvent,
//         this.nomEvent,
//         this.dateDebut,
//         this.dateFin,
//         this.description,
//         this.lieu,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.idCategorie,
//         this.idCommune,
//         this.idCompagnie,
//     });

//     factory Ent.fromRawJson(String str) => Ent.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory Ent.fromJson(Map<String, dynamic> json) => Ent(
//         id: json["id"],
//         participantEvenement: json["participant_evenement"] == null ? null : List<ParticipantEvenement>.from(json["participant_evenement"].map((x) => ParticipantEvenement.fromJson(x))),
//         imageEvent: json["image_event"] == null ? null : List<ImageEvent>.from(json["image_event"].map((x) => ImageEvent.fromJson(x))),
//         nomEvent: json["nom_event"],
//         dateDebut: DateTime.parse(json["date_debut"]),
//         dateFin: DateTime.parse(json["date_fin"]),
//         description: json["description"],
//         lieu: json["lieu"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         idCategorie: Welcome.fromJson(json["id_categorie"]),
//         idCommune: Welcome.fromJson(json["id_commune"]),
//         idCompagnie: IdCompagnie.fromJson(json["id_compagnie"]),
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "participant_evenement": participantEvenement == null ? null : List<dynamic>.from(participantEvenement.map((x) => x.toJson())),
//     //     "image_event": imageEvent == null ? null : List<dynamic>.from(imageEvent.map((x) => x.toJson())),
//     //     "nom_event": nomEvent,
//     //     "date_debut": "${dateDebut.year.toString().padLeft(4, '0')}-${dateDebut.month.toString().padLeft(2, '0')}-${dateDebut.day.toString().padLeft(2, '0')}",
//     //     "date_fin": "${dateFin.year.toString().padLeft(4, '0')}-${dateFin.month.toString().padLeft(2, '0')}-${dateFin.day.toString().padLeft(2, '0')}",
//     //     "description": description,
//     //     "lieu": lieu,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "id_categorie": idCategorie.toJson(),
//     //     "id_commune": idCommune.toJson(),
//     //     "id_compagnie": idCompagnie.toJson(),
//     // };
// }

// class Welcome {
//     int id;
//     List<Ent> categorieEvenement;
//     String nom;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     String nomCommune;

//     Welcome({
//         this.id,
//         this.categorieEvenement,
//         this.nom,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.nomCommune,
//     });

//     // factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         id: json["id"],
//         categorieEvenement: List<Ent>.from(json["categorie_evenement"].map((x) => Ent.fromJson(x))),
//         nom: json["nom"] == null ? null : json["nom"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         nomCommune: json["nom_commune"],
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "categorie_evenement":List<dynamic>.from(categorieEvenement.map((x) => x.toJson())),
//     //     "nom": nom,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "nom_commune": nomCommune,
//     // };
// }

// class User {
//     int id;
//     String password;
//     dynamic lastLogin;
//     bool isSuperuser;
//     String username;
//     String firstName;
//     String lastName;
//     String email;
//     bool isStaff;
//     bool isActive;
//     DateTime dateJoined;
//     // List<dynamic> groups;
//     // List<dynamic> userPermissions;

//     User({
//         this.id,
//         this.password,
//         this.lastLogin,
//         this.isSuperuser,
//         this.username,
//         this.firstName,
//         this.lastName,
//         this.email,
//         this.isStaff,
//         this.isActive,
//         this.dateJoined,
//         // this.groups,
//         // this.userPermissions,
//     });

//     // factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         id: json["id"],
//         password: json["password"],
//         lastLogin: json["last_login"],
//         isSuperuser: json["is_superuser"],
//         username: json["username"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         email: json["email"],
//         isStaff: json["is_staff"],
//         isActive: json["is_active"],
//         dateJoined: DateTime.parse(json["date_joined"])
//     //     groups: List<dynamic>.from(json["groups"].map((x) => x)),
//     //     userPermissions: List<dynamic>.from(json["user_permissions"].map((x) => x)),
//     // 
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "password": password,
//     //     "last_login": lastLogin,
//     //     "is_superuser": isSuperuser,
//     //     "username": username,
//     //     "first_name": firstName,
//     //     "last_name": lastName,
//     //     "email": email,
//     //     "is_staff": isStaff,
//     //     "is_active": isActive,
//     //     "date_joined": dateJoined.toIso8601String(),
//     //     "groups": List<dynamic>.from(groups.map((x) => x)),
//     //     "user_permissions": List<dynamic>.from(userPermissions.map((x) => x)),
//     // };
// }

// class IdCompagnie {
//     int id;
//     String nomCompagnie;
//     String addresse;
//     String email;
//     String contact;
//     String password;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;

//     IdCompagnie({
//         this.id,
//         this.nomCompagnie,
//         this.addresse,
//         this.email,
//         this.contact,
//         this.password,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//     });

//     // factory IdCompagnie.fromRawJson(String str) => IdCompagnie.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory IdCompagnie.fromJson(Map<String, dynamic> json) => IdCompagnie(
//         id: json["id"],
//         nomCompagnie: json["nom_compagnie"],
//         addresse: json["addresse"],
//         email: json["email"],
//         contact: json["contact"],
//         password: json["password"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "nom_compagnie": nomCompagnie,
//         "addresse": addresse,
//         "email": email,
//         "contact": contact,
//         "password": password,
//         "status": status,
//         "date_add": dateAdd.toIso8601String(),
//         "date_upd": dateUpd.toIso8601String(),
//     };
// }

// class ImageEvent {
//     int id;
//     String images;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     Event event;

//     ImageEvent({
//         this.id,
//         this.images,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.event,
//     });

//     // factory ImageEvent.fromRawJson(String str) => ImageEvent.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory ImageEvent.fromJson(Map<String, dynamic> json) => ImageEvent(
//         id: json["id"],
//         images: json["images"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         event: Event.fromJson(json["event"]),
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "images": images,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "event": event.toJson(),
//     // };
// }

// class Event {
//     int id;
//     String nomEvent;
//     DateTime dateDebut;
//     DateTime dateFin;
//     String description;
//     String lieu;
//     bool status;
//     DateTime dateAdd;
//     DateTime dateUpd;
//     int idCategorie;
//     int idCommune;
//     int idCompagnie;

//     Event({
//         this.id,
//         this.nomEvent,
//         this.dateDebut,
//         this.dateFin,
//         this.description,
//         this.lieu,
//         this.status,
//         this.dateAdd,
//         this.dateUpd,
//         this.idCategorie,
//         this.idCommune,
//         this.idCompagnie,
//     });

//     // factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

//     // String toRawJson() => json.encode(toJson());

//     factory Event.fromJson(Map<String, dynamic> json) => Event(
//         id: json["id"],
//         nomEvent: json["nom_event"],
//         dateDebut: DateTime.parse(json["date_debut"]),
//         dateFin: DateTime.parse(json["date_fin"]),
//         description: json["description"],
//         lieu: json["lieu"],
//         status: json["status"],
//         dateAdd: DateTime.parse(json["date_add"]),
//         dateUpd: DateTime.parse(json["date_upd"]),
//         idCategorie: json["id_categorie"],
//         idCommune: json["id_commune"],
//         idCompagnie: json["id_compagnie"],
//     );

//     // Map<String, dynamic> toJson() => {
//     //     "id": id,
//     //     "nom_event": nomEvent,
//     //     "date_debut": "${dateDebut.year.toString().padLeft(4, '0')}-${dateDebut.month.toString().padLeft(2, '0')}-${dateDebut.day.toString().padLeft(2, '0')}",
//     //     "date_fin": "${dateFin.year.toString().padLeft(4, '0')}-${dateFin.month.toString().padLeft(2, '0')}-${dateFin.day.toString().padLeft(2, '0')}",
//     //     "description": description,
//     //     "lieu": lieu,
//     //     "status": status,
//     //     "date_add": dateAdd.toIso8601String(),
//     //     "date_upd": dateUpd.toIso8601String(),
//     //     "id_categorie": idCategorie,
//     //     "id_commune": idCommune,
//     //     "id_compagnie": idCompagnie,
//     // };
// }
