import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Nausees{
  String? Moment_apparition;
  String? Nbr_ep;
  String? Duree_par_jours;
  String? Nbr_repas;
  String? Traitement;
  String? Traitement_desc;
  String? Patient_Ip= patient.Ip;


  Nausees({
    this.Moment_apparition,
    this.Nbr_ep,
    this.Duree_par_jours,
    this.Nbr_repas,
    this.Traitement,
    this.Traitement_desc,
    this.Patient_Ip,

  });
  Nausees.fromJson(Map<String,dynamic>json){
    Moment_apparition= json["Moment d'apparition"];
    Nbr_ep= json["Nombre d'épisodes par 24h"];
    Duree_par_jours= json['Durée par jours'];
    Nbr_repas= json['Nombres de repas par jour'];
    Traitement= json["Est-ce qu'un traitement a été prescrit ?"];
    Traitement_desc= json['Traitement prescrit'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Moment d'apparition"]= this.Moment_apparition.toString();
    data["Nombre d'épisodes par 24h"]= this.Nbr_ep.toString();
    data['Durée par jours']= this.Duree_par_jours.toString();
    data['Nombres de repas par jour']= this.Nbr_repas.toString();
    data["Est-ce qu'un traitement a été prescrit ?"]= this.Traitement.toString();
    data['Traitement prescrit']= this.Traitement_desc.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




