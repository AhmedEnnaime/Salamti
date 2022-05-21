import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Oculaire{
  String? Frequente_Docetaxel;
  String? Apparition;
  String? Evo_duree;
  String? Toxicity_day;
  String? Rougueur;
  String? larmoiement;
  String? Odeme;
  String? Sensation;
  String? Acuite;
  String? Fievre;
  String? Aucun;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Oculaire({
    this.Frequente_Docetaxel,
    this.Apparition,
    this.Evo_duree,
    this.Toxicity_day,
    this.Rougueur,
    this.larmoiement,
    this.Odeme,
    this.Sensation,
    this.Acuite,
    this.Fievre,
    this.Aucun,
    this.Grade,
    this.Patient_Ip,

  });
  Oculaire.fromJson(Map<String,dynamic>json){
    Frequente_Docetaxel= json["Fréquente avec Docetaxel ?"];
    Apparition= json["Delai d'apparition"];
    Evo_duree= json["Durée d'évolution"];
    Toxicity_day= json["Date de declaration"];
    Rougueur= json["Rougueur"];
    larmoiement= json["Larmoiement"];
    Odeme= json["œdème"];
    Sensation= json["Sensation de picotement"];
    Acuite= json["Baisse de l’acuité visuelle interférant avec les activités de la vie quotidienne"];
    Fievre= json["Fièvre"];
    Aucun= json["Aucun"];
    Grade= json["Grade"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Fréquente avec Docetaxel ?"]= this.Frequente_Docetaxel.toString();
    data["Delai d'apparition"]= this.Apparition.toString();
    data["Durée d'évolution"]= this.Evo_duree.toString();
    data["Date de declaration"]= this.Toxicity_day.toString();
    data['Rougueur']= this.Rougueur.toString();
    data['Larmoiement']= this.larmoiement.toString();
    data["œdème"]= this.Odeme.toString();
    data["Sensation de picotement"]= this.Sensation.toString();
    data['Baisse de l’acuité visuelle interférant avec les activités de la vie quotidienne']= this.Acuite.toString();
    data['Fièvre']= this.Fievre.toString();
    data["Aucun"]= this.Aucun.toString();
    data["Grade"]= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




