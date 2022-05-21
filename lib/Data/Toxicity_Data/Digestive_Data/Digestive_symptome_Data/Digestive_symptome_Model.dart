import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Digestive_symptome{
  String? Nausees;
  String? Vomissements;
  String? Diarrhees;
  String? Constipation;
  String? Mucite;
  String? Douleurs_abdominales;
  String? Modification_gouts;
  String? Toxicity_day;
  String? Nausees_grade;
  String? Diarrhees_grade;
  String? Constipation_grade;
  String? Mucite_grade;
  String? Patient_Ip= patient.Ip;


  Digestive_symptome({
    this.Nausees,
    this.Vomissements,
    this.Diarrhees,
    this.Constipation,
    this.Mucite,
    this.Douleurs_abdominales,
    this.Modification_gouts,
    this.Toxicity_day,
    this.Nausees_grade,
    this.Diarrhees_grade,
    this.Constipation_grade,
    this.Mucite_grade,
    this.Patient_Ip,

  });
  Digestive_symptome.fromJson(Map<String,dynamic>json){
    Nausees= json["Nausées"];
    Vomissements= json["Vomissements"];
    Diarrhees= json['Diarrhées'];
    Constipation= json['Constipation'];
    Mucite= json['Mucite'];
    Douleurs_abdominales= json["Douleurs abdominales"];
    Modification_gouts= json["Modification des gouts des aliments"];
    Toxicity_day= json["Date de déclaration"];
    Nausees_grade= json["Grade de nausées"];
    Diarrhees_grade= json["Grade de diarrhées"];
    Constipation_grade= json["Grade de constipation"];
    Mucite_grade= json["Grade de mucite"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Nausées"]= this.Nausees.toString();
    data["Vomissements"]= this.Vomissements.toString();
    data['Diarrhées']= this.Diarrhees.toString();
    data['Constipation']= this.Constipation.toString();
    data['Mucite']= this.Mucite.toString();
    data["Douleurs abdominales"]= this.Douleurs_abdominales.toString();
    data["Modification des gouts des aliments"]= this.Modification_gouts.toString();
    data["Date de déclaration"]= this.Toxicity_day.toString();
    data["Grade de nausées"]= this.Nausees_grade.toString();
    data["Grade de diarrhées"]= this.Diarrhees_grade.toString();
    data["Grade de constipation"]= this.Constipation_grade.toString();
    data["Grade de mucite"]= this.Mucite_grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




