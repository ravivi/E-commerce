
class Fullname{
  final String id;
  final String name;
  final String prenom;

  Fullname({this.id, this.name, this.prenom});

  factory Fullname.fromJson(Map<String, dynamic> json){
    return Fullname(
      id: json['id'],
      name: json['Nom'],
      prenom: json['Prenom'],
    );
  }
  
}