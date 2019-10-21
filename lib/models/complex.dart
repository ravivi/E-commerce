
import 'package:event/models/fulname.dart';
import 'package:event/models/student_model.dart';

class Complex{
  final int id;
  Fullname fulname;
  final List<String> adress;

  Complex({this.id, this.fulname, this.adress});

  factory Complex.fromJson(Map<String, dynamic> json){
    final add = json['Adress'] as List;
    List<String> data = new List.from(add);
    return Complex(
      id: json['id'],
      fulname: Fullname.fromJson(json['Fullname']),
      // première methode //adress: json['Adress'].cast<String>()
      adress: data // deuxieme methode
    );
  }
  
}