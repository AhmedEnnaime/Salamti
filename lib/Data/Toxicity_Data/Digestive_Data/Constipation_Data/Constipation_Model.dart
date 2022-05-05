import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Constipation{
  String? Frequence_selles;
  String? Duree_evolution;
  bool? Crampes;
  bool? Sgnm;
  bool? Vms;
  bool? Fievre_consti;
  String? Patient_Ip= patient.Ip;


  Constipation({
    this.Frequence_selles,
    this.Duree_evolution,
    this.Crampes,
    this.Sgnm,
    this.Vms,
    this.Fievre_consti,
    this.Patient_Ip,

  });
  Constipation.fromJson(Map<String,dynamic>json){
    Frequence_selles= json["Fréquence d'élimination des selles"];
    Duree_evolution= json["Durée d'évolution"];
    Crampes= json["Douleurs et crampes associées"];
    Sgnm= json["Saignement digestif associé"];
    Vms= json["Vomissements"];
    Fievre_consti= json["Fièvre"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Fréquence d'élimination des selles"]= this.Frequence_selles.toString();
    data["Durée d'évolution"]= this.Duree_evolution.toString();
    data["Douleurs et crampes associées"]= this.Crampes.toString();
    data["Saignement digestif associé"]= this.Sgnm.toString();
    data["Vomissements"]= this.Vms.toString();
    data["Fièvre"]= this.Fievre_consti.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




