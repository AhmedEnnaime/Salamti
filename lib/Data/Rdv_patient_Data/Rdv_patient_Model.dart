import 'package:e_sante/Data/Patient_Data/User.dart';
Patient patient = Patient();
class Rdv_patient{
  String? Day;
  String? rdv_temps;
  String? Patient_Ip=patient.Ip;
  String? Doctor_Ip=patient.Doctor_Ip;
  String? Patient_nom;


  Rdv_patient({
    this.Day,
    this.rdv_temps,
    this.Patient_Ip,
    this.Doctor_Ip,
    this.Patient_nom,

  });
  Rdv_patient.fromJson(Map<String,dynamic>json){
    Day= json['La date du rendez-vous'];
    rdv_temps= json['Le temps du rendez-vous'];
    Patient_Ip= json['Patient_Ip'];
    Doctor_Ip= json['Doctor_Ip'];
    Patient_nom= json['Nom du patient'];

  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["La date du rendez-vous"]= this.Day.toString();
    data["Le temps du rendez-vous"]= this.rdv_temps.toString();
    data["Patient_Ip"]= this.Patient_Ip.toString();
    data["Doctor_Ip"]= this.Doctor_Ip.toString();
    data["Nom du patient"]= this.Patient_nom.toString();
    return data;
  }

}




