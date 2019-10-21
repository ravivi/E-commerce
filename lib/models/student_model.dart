class Student{
  final int id;
  final String nom;
  final String prenom;

  Student({this.id, this.nom, this.prenom});

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      id: json['id'],
      nom: json['Nom'],
      prenom: json['Prenom']
    );
  }
  
}