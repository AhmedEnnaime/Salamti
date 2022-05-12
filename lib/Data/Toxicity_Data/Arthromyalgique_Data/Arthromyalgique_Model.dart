import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Arthromyalgique{
  String? Survient_Docetaxel;
  String? Apparition;
  String? Evo_duree;
  bool? Hanches;
  bool? Epaules;
  bool? Membres;
  bool? Aucun;
  bool? Crampes_musculaires;
  bool? Douleurs_diffuses;
  bool? Arthralgies;
  String? Patient_Ip= patient.Ip;


  Arthromyalgique({
    this.Survient_Docetaxel,
    this.Apparition,
    this.Evo_duree,
    this.Hanches,
    this.Epaules,
    this.Membres,
    this.Aucun,
    this.Crampes_musculaires,
    this.Douleurs_diffuses,
    this.Arthralgies,
    this.Patient_Ip,

  });
  Arthromyalgique.fromJson(Map<String,dynamic>json){
    Survient_Docetaxel= json["Survient sous Docetaxel ?"];
    Apparition= json["Delai d'apparition"];
    Evo_duree= json["Durée d'évolution"];
    Hanches= json["Hanches"];
    Epaules= json["Epaules"];
    Membres= json["Membres"];
    Aucun= json["Aucun"];
    Crampes_musculaires= json["Crampes musculaires"];
    Douleurs_diffuses= json["Douleurs diffuses"];
    Arthralgies= json["Arthralgies"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Survient sous Docetaxel ?"]= this.Survient_Docetaxel.toString();
    data["Delai d'apparition"]= this.Apparition.toString();
    data["Durée d'évolution"]= this.Evo_duree.toString();
    data['Hanches']= this.Hanches.toString();
    data['Epaules']= this.Epaules.toString();
    data["Membres"]= this.Membres.toString();
    data["Aucun"]= this.Aucun.toString();
    data['Crampes musculaires']= this.Crampes_musculaires.toString();
    data['Douleurs diffuses']= this.Douleurs_diffuses.toString();
    data["Arthralgies"]= this.Arthralgies.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




