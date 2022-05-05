import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Diarrhees{
  String? Nbr_selles;
  String? Duree_survenue;
  String? Douleurs_abdo;
  String? Prise_alimentaire;
  String? Aspect_selles;
  bool? Fatigue;
  bool? Denutrition;
  bool? Saignement;
  bool? Trbl_neuro;
  bool? Fievre_diarr;
  String? Patient_Ip= patient.Ip;


  Diarrhees({
    this.Nbr_selles,
    this.Duree_survenue,
    this.Douleurs_abdo,
    this.Prise_alimentaire,
    this.Aspect_selles,
    this.Fatigue,
    this.Denutrition,
    this.Saignement,
    this.Trbl_neuro,
    this.Fievre_diarr,
    this.Patient_Ip,

  });
  Diarrhees.fromJson(Map<String,dynamic>json){
    Nbr_selles= json["Nombres de selles par jour"];
    Duree_survenue= json["Durée de survenue"];
    Douleurs_abdo= json['Douleurs abdominales associées'];
    Prise_alimentaire= json['Interférant avec la prise alimentaire'];
    Aspect_selles= json["Aspect des selles"];
    Fatigue= json["Fatigue importante"];
    Denutrition= json["Déshytratation, Dénutrition"];
    Saignement= json["Saignement digestif associé"];
    Trbl_neuro= json["Troubles neurologiques"];
    Fievre_diarr= json["Fièvre"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Nombres de selles par jour"]= this.Nbr_selles.toString();
    data["Durée de survenue"]= this.Duree_survenue.toString();
    data['Douleurs abdominales associées']= this.Douleurs_abdo.toString();
    data['Interférant avec la prise alimentaire']= this.Prise_alimentaire.toString();
    data["Aspect des selles"]= this.Aspect_selles.toString();
    data["Fatigue importante"]= this.Fatigue.toString();
    data["Déshytratation, Dénutrition"]= this.Denutrition.toString();
    data["Saignement digestif associé"]= this.Saignement.toString();
    data["Troubles neurologiques"]= this.Trbl_neuro.toString();
    data["Fièvre"]= this.Fievre_diarr.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




