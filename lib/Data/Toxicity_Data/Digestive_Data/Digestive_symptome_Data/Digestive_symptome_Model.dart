import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Digestive_symptome{
  bool? Nausees;
  bool? Vomissements;
  bool? Diarrhees;
  bool? Constipation;
  bool? Mucite;
  bool? Douleurs_abdominales;
  bool? Modification_gouts;
  String? Patient_Ip= patient.Ip;


  Digestive_symptome({
    this.Nausees,
    this.Vomissements,
    this.Diarrhees,
    this.Constipation,
    this.Mucite,
    this.Douleurs_abdominales,
    this.Modification_gouts,
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
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




