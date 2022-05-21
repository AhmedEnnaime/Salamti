import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Cutane_symptome{
  String? Rash;
  String? Mains;
  String? Ongles;
  String? Infiltration;
  String? Alopecie;
  String? Suivi;
  String? Toxicity_day;
  String? Rash_grade;
  String? Mains_grade;
  String? Ongles_grade;
  String? Patient_Ip= patient.Ip;


  Cutane_symptome({
    this.Rash,
    this.Mains,
    this.Ongles,
    this.Infiltration,
    this.Alopecie,
    this.Suivi,
    this.Toxicity_day,
    this.Rash_grade,
    this.Mains_grade,
    this.Ongles_grade,
    this.Patient_Ip,

  });
  Cutane_symptome.fromJson(Map<String,dynamic>json){
    Rash= json["Rash cutanée"];
    Mains= json["Mains et pieds"];
    Ongles= json['Ongles'];
    Infiltration= json['Infiltration oedémateuse'];
    Alopecie= json['Alopécie'];
    Suivi= json["Suivi d’une extravasation cutanée"];
    Toxicity_day= json["Date de déclaration"];
    Rash_grade= json["Grade de rash cutanée"];
    Mains_grade= json["Grade de mains et pieds"];
    Ongles_grade= json["Grade des ongles"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Rash cutanée"]= this.Rash.toString();
    data["Mains et pieds"]= this.Mains.toString();
    data['Ongles']= this.Ongles.toString();
    data['Infiltration oedémateuse']= this.Infiltration.toString();
    data['Alopécie']= this.Alopecie.toString();
    data["Suivi d’une extravasation cutanée"]= this.Suivi.toString();
    data["Date de déclaration"]= this.Toxicity_day.toString();
    data["Grade de rash cutanée"]= this.Rash_grade.toString();
    data["Grade de mains et pieds"]= this.Mains_grade.toString();
    data["Grade des ongles"]= this.Ongles_grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




