import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Question{
  String? Question_contenu;
  String? Patient_Ip= patient.Ip;
  String? Doctor_Ip= patient.Doctor_Ip;


  Question({
    this.Question_contenu,
    this.Patient_Ip,
    this.Doctor_Ip

  });
  Question.fromJson(Map<String,dynamic>json){
    Question_contenu= json["Contenu du question"];
    Patient_Ip= json['Patient_Ip'];
    Doctor_Ip= json['Doctor_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Contenu du question"]= this.Question_contenu.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    data['Doctor_Ip']= this.Doctor_Ip.toString();
    return data;
  }

}




