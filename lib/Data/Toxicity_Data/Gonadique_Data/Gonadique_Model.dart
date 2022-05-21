import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Gonadique{
  String? Apparition_cures;
  String? Irregularite;
  String? Rythme;
  String? Interruption;
  String? Derivation;
  String? Toxicity_day;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Gonadique({
    this.Apparition_cures,
    this.Irregularite,
    this.Rythme,
    this.Interruption,
    this.Derivation,
    this.Toxicity_day,
    this.Grade,
    this.Patient_Ip,

  });
  Gonadique.fromJson(Map<String,dynamic>json){
    Apparition_cures= json["Apparition après combien de cures ?"];
    Irregularite= json["Irrégularité du cycle"];
    Rythme= json["Modification du rythme ou de quantité"];
    Interruption= json["Interruption totale des règles"];
    Derivation= json["Signes de dérivation ostrogénique"];
    Toxicity_day= json["Date de declaration"];
    Grade= json["Grade"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Apparition après combien de cures ?"]= this.Apparition_cures.toString();
    data["Irrégularité du cycle"]= this.Irregularite.toString();
    data["Modification du rythme ou de quantité"]= this.Rythme.toString();
    data['Interruption totale des règles']= this.Interruption.toString();
    data['Signes de dérivation ostrogénique']= this.Derivation.toString();
    data['Date de declaration']= this.Toxicity_day.toString();
    data['Grade']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




