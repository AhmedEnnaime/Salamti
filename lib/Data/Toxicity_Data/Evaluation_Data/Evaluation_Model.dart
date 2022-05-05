import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Evaluation_Model{
  bool? Presence_Plaintes;
  bool? Fatigue;
  bool? Capacite_travail;
  bool? Activites_quotidiennes;
  bool? Autonomie;
  bool? Apetit;
  bool? Douleur;
  bool? Depression;
  String? Patient_Ip=patient.Ip;



  Evaluation_Model({
    this.Presence_Plaintes,
    this.Fatigue,
    this.Capacite_travail,
    this.Activites_quotidiennes,
    this.Autonomie,
    this.Apetit,
    this.Depression,
    this.Douleur,
    this.Patient_Ip,


  });
  Evaluation_Model.fromJson(Map<String,dynamic>json){
    Presence_Plaintes= json["Présences des plaintes"];
    Fatigue= json["Fatigue"];
    Capacite_travail= json['Capacite de travail'];
    Activites_quotidiennes= json['Acitivités quotidiennes'];
    Autonomie= json["Autonomie"];
    Apetit= json['Appétit'];
    Douleur= json['Douleur'];
    Depression= json['Anxiété/dépression'];
    Patient_Ip= json['Patient_Ip'];

  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Présences des plaintes"]= this.Presence_Plaintes.toString();
    data["Fatigue"]= this.Fatigue.toString();
    data['Capacite de travail']= this.Capacite_travail.toString();
    data['Acitivités quotidiennes']= this.Activites_quotidiennes.toString();
    data["Autonomie"]= this.Autonomie.toString();
    data['Appétit']= this.Apetit.toString();
    data['Douleur']= this.Douleur.toString();
    data['Anxiété/dépression']= this.Depression.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();

    return data;
  }

}




