import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Cures_Model{
  String? cure_confirm;
  DateTime? cure_day;
  DateTime? Next_cure;
  int? Temps_restant;
  String? Patient_Ip= patient.Ip;


  Cures_Model({
    this.cure_confirm,
    this.cure_day,
    this.Next_cure,
    this.Temps_restant,
    this.Patient_Ip,

  });
  Cures_Model.fromJson(Map<String,dynamic>json){
    cure_confirm= json["Vous avez passé votre cure ?"];
    cure_day= json["La date dont vous avez passé la cure"];
    Next_cure= json["La date de la prochaine cure"];
    Temps_restant= json["Le nombre de jours restant avant votre prochaine cure"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Vous avez passé votre cure ?"]= this.cure_confirm.toString();
    data["La date dont vous avez passé la cure"]= this.cure_day.toString();
    data["La date de la prochaine cure"]= this.Next_cure.toString();
    data["Le nombre de jours restant avant votre prochaine cure"]= this.Temps_restant.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




