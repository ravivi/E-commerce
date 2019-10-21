import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class UtilisateurProduit {
  final int id;
  final String nom;
   final String prenom;
    final int quantite;

  UtilisateurProduit({this.id, this.nom, this.prenom, this.quantite});
  factory UtilisateurProduit.fromJson(Map<String,dynamic> json){
    return UtilisateurProduit(
      id: json['id'],
      nom: json['nom'],
      prenom: json['prenom'],
      quantite: json['quantite'],
    );
  }
  
}
class ListUtilisateur {
  final List<UtilisateurProduit> listUtilisateur;

  ListUtilisateur({this.listUtilisateur});
    factory ListUtilisateur.fromJson(List<dynamic> json){
      List<UtilisateurProduit> arr = new List<UtilisateurProduit>();
      arr = json.map((item)=> UtilisateurProduit.fromJson(item)).toList();
    return ListUtilisateur(
      listUtilisateur: arr

    );
  }
}

class CommandProduit {
  final int id;
   final String date;
   final bool statut;
   final ListUtilisateur utilisateur;

  CommandProduit({this.id, this.date, this.statut, this.utilisateur});
  factory CommandProduit.fromJson(Map<String,dynamic> json){
    return CommandProduit(
      id: json['id'],
      date: json['date'],
      statut: json['statut'],
      utilisateur: ListUtilisateur.fromJson(json['utilisateur'])
    );
  }
  
}
class ListCommande {
  final List<CommandProduit> listCommande;

  ListCommande({this.listCommande});
    factory ListCommande.fromJson(List<dynamic> json){
      List<CommandProduit> arr = new List<CommandProduit>();
      arr = json.map((item)=> CommandProduit.fromJson(item)).toList();
    return ListCommande(
      listCommande: arr
    );
  }
}

class Produit {
  final int id;
  final String nom;
   final String decription;
   final int prix;
   final String image;
   final ListCommande commande;

  Produit({this.id, this.nom, this.decription, this.prix,this.image, this.commande});
  factory Produit.fromJson(Map<String,dynamic> json){
    return Produit(
      id: json['id'],
      nom: json['nom'],
      decription: json['decription'],
      prix: json['prix'],
      image: json['image'],
      commande: ListCommande.fromJson(json['commande'])
    );
  }
  
}
class ListProduit {
  final List<Produit> listProduit;

  ListProduit({this.listProduit});
    factory ListProduit.fromJson(List<dynamic> json){
      List<Produit> arr = new List<Produit>();
      arr = json.map((item)=> Produit.fromJson(item)).toList();
    return ListProduit(
      listProduit: arr
    );
  }
}

class CategorieProduit {
  final int id;
  final String nom;
  final String image;
  final ListProduit produit;

  CategorieProduit({this.id, this.nom,this.image,this.produit});
    factory CategorieProduit.fromJson(Map<String,dynamic> json){
    return CategorieProduit(
      id: json['id'],
      nom: json['nom'],
      image: json['image'],
      produit: ListProduit.fromJson(json['produit']),
    );
  }
}
class ListCategoryProduct {
  final List<CategorieProduit> listcategorie;

  ListCategoryProduct({this.listcategorie});
    factory ListCategoryProduct.fromJson(List<dynamic> json){
      List<CategorieProduit> arr = new List<CategorieProduit>();
      arr = json.map((item)=> CategorieProduit.fromJson(item)).toList();
    return ListCategoryProduct(
      listcategorie: arr
    );
  }
    Future<String> loadCatJson() async{
    return await rootBundle.loadString("asset/categorie.json"); 
}
  Future getListCat() async{
    final res = await loadCatJson();
    Iterable list = json.decode(res);
    List<CategorieProduit> arr = list.map((item)=> CategorieProduit.fromJson(item)).toList();
    return arr;
  }
}

