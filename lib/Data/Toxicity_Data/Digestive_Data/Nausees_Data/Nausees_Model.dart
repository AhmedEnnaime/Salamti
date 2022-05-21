import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Nausees{
  String? Moment_apparition;
  String? Nbr_ep;
  String? Duree_par_jours;
  String? Nbr_repas;
  String? Troubles_neurologiques;
  String? Moins_frequente;
  String? Urines_fonces;
  String? Deshydratation;
  String? Perte_poids;
  String? Traitement;
  String? Traitement_desc;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Nausees({
    this.Moment_apparition,
    this.Nbr_ep,
    this.Duree_par_jours,
    this.Nbr_repas,
    this.Troubles_neurologiques,
    this.Moins_frequente,
    this.Urines_fonces,
    this.Deshydratation,
    this.Perte_poids,
    this.Traitement,
    this.Traitement_desc,
    this.Grade,
    this.Patient_Ip,

  });
  Nausees.fromJson(Map<String,dynamic>json){
    Moment_apparition= json["Moment d'apparition"];
    Nbr_ep= json["Nombre d'épisodes par 24h"];
    Duree_par_jours= json['Durée par jours'];
    Nbr_repas= json['Nombres de repas par jour'];
    Troubles_neurologiques= json['Troubles neurologiques'];
    Moins_frequente= json["Envie d'uriner moins fréquente "];
    Urines_fonces= json["Urines plus foncés que d'habitude"];
    Deshydratation= json['Déshydratation'];
    Perte_poids= json['Perte de poids'];
    Traitement= json["Est-ce qu'un traitement a été prescrit ?"];
    Traitement_desc= json['Traitement prescrit'];
    Grade= json['Grade de Nausées'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Moment d'apparition"]= this.Moment_apparition.toString();
    data["Nombre d'épisodes par 24h"]= this.Nbr_ep.toString();
    data['Durée par jours']= this.Duree_par_jours.toString();
    data['Nombres de repas par jour']= this.Nbr_repas.toString();
    data['Troubles neurologiques']= this.Troubles_neurologiques.toString();
    data["Envie d'uriner moins fréquente "]= this.Moins_frequente.toString();
    data["Urines plus foncés que d'habitude"]= this.Urines_fonces.toString();
    data['Déshydratation']= this.Deshydratation.toString();
    data['Perte de poids']= this.Perte_poids.toString();
    data["Est-ce qu'un traitement a été prescrit ?"]= this.Traitement.toString();
    data['Traitement prescrit']= this.Traitement_desc.toString();
    data['Grade de Nausées']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




