import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Rash{
  String? Visage;
  String? Plis;
  String? Peaux;
  String? Autre;
  String? Surface;
  String? Prurit;
  String? Douleur;
  String? Brulure;
  String? Fievre;
  String? Impact;
  String? Delai;
  String? Signe;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Rash({
    this.Visage,
    this.Plis,
    this.Peaux,
    this.Autre,
    this.Surface,
    this.Prurit,
    this.Douleur,
    this.Brulure,
    this.Fievre,
    this.Impact,
    this.Delai,
    this.Signe,
    this.Grade,
    this.Patient_Ip,

  });
  Rash.fromJson(Map<String,dynamic>json){
    Visage= json["Visage ou tronc touché ?"];
    Plis= json["Plis touché ?"];
    Peaux= json['Peaux touché ?'];
    Autre= json['Autre partie touchée ?'];
    Surface= json['Surface atteinte'];
    Prurit= json["Prurit"];
    Douleur= json["Douleur"];
    Brulure= json['Brulure'];
    Fievre= json['Fièvre'];
    Impact= json["Impact sur activités quotidiennes ?"];
    Delai= json['Délai d’apparition  depuis la dernière cure ?'];
    Signe= json['Signes de surinfection'];
    Grade= json['Grade de Nausées'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Visage ou tronc touché ?"]= this.Visage.toString();
    data["Plis touché ?"]= this.Plis.toString();
    data['Peaux touché ?']= this.Peaux.toString();
    data['Autre partie touchée ?']= this.Autre.toString();
    data['Surface atteinte']= this.Surface.toString();
    data["Prurit"]= this.Prurit.toString();
    data["Douleur"]= this.Douleur.toString();
    data['Brulure']= this.Brulure.toString();
    data['Fièvre']= this.Fievre.toString();
    data["Impact sur activités quotidiennes ?"]= this.Impact.toString();
    data['Délai d’apparition  depuis la dernière cure ?']= this.Delai.toString();
    data['Signes de surinfection']= this.Signe.toString();
    data['Grade de Rash']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




