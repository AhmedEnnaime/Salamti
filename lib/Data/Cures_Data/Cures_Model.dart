import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Cures_Model{
  String? cure_day;
  String? Next_cure;
  String? Patient_Ip= patient.Ip;
  String? Patient_nom;


  Cures_Model({
    this.cure_day,
    this.Next_cure,
    this.Patient_Ip,
    this.Patient_nom

  });
  Cures_Model.fromJson(Map<String,dynamic>json){
    cure_day= json["La date dont vous avez passé la cure"];
    Next_cure= json["La date de la prochaine cure"];
    Patient_Ip= json['Patient_Ip'];
    Patient_nom= json['Nom du patient'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["La date dont vous avez passé la cure"]= this.cure_day.toString();
    data["La date de la prochaine cure"]= this.Next_cure.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    data['Nom du patient']= this.Patient_nom.toString();
    return data;
  }

}




