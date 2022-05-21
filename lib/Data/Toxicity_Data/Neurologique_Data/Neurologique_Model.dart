import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Neurologique{
  String? Topographie_neuropathie;
  String? Picotements;
  String? fourmillements;
  String? dysethesies;
  String? brulure;
  String? Douleur;
  String? escaliers;
  String? extension;
  String? Qtd;
  String? Aucun;
  String? Toxicity_day;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Neurologique({
    this.Topographie_neuropathie,
    this.Picotements,
    this.fourmillements,
    this.dysethesies,
    this.brulure,
    this.Douleur,
    this.escaliers,
    this.extension,
    this.Qtd,
    this.Aucun,
    this.Toxicity_day,
    this.Grade,
    this.Patient_Ip,

  });
  Neurologique.fromJson(Map<String,dynamic>json){
    Topographie_neuropathie= json["Topographie de la neuropathie"];
    Picotements= json["Picotements"];
    fourmillements= json['Fourmillements'];
    dysethesies= json['Dysethésies'];
    brulure= json['Sensation de brulure'];
    Douleur= json["Douleur"];
    escaliers= json["Difficulté à gravir les escaliers"];
    extension= json['Difficulté de l’extension des doigts'];
    Qtd= json['Altération des activités quotidiennes'];
    Aucun= json['Aucun'];
    Toxicity_day= json['Date de declaration'];
    Grade= json['Grade'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Topographie de la neuropathie"]= this.Topographie_neuropathie.toString();
    data["Picotements"]= this.Picotements.toString();
    data['Fourmillements']= this.fourmillements.toString();
    data['Dysethésies']= this.dysethesies.toString();
    data['Sensation de brulure']= this.brulure.toString();
    data["Douleur"]= this.Douleur.toString();
    data["Difficulté à gravir les escaliers"]= this.escaliers.toString();
    data['Difficulté de l’extension des doigts']= this.extension.toString();
    data['Altération des activités quotidiennes']= this.Qtd.toString();
    data['Aucun']= this.Aucun.toString();
    data['Date de declaration']= this.Toxicity_day.toString();
    data['Grade']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




