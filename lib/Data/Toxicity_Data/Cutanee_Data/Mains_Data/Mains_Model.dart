import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Mains{
  String? Topographie;
  String? Impact;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Mains({
    this.Topographie,
    this.Impact,
    this.Grade,
    this.Patient_Ip,

  });
  Mains.fromJson(Map<String,dynamic>json){
    Topographie= json["Topographie"];
    Impact= json["Impact sur activités quotidiennes"];
    Grade= json['Grade de Mains et pieds'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Topographie"]= this.Topographie.toString();
    data["Impact sur activités quotidiennes"]= this.Impact.toString();
    data['Grade de Mains et pieds']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




