import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Fievre_Model{
  String? Delai_apparition;
  String? Mesure;
  String? Patient_Ip= patient.Ip;


  Fievre_Model({
    this.Delai_apparition,
    this.Mesure,
    this.Patient_Ip,

  });
  Fievre_Model.fromJson(Map<String,dynamic>json){
    Delai_apparition= json["Délai d'apprition depuis la dernière cure"];
    Mesure= json["Votre temperatue est supèrieure à 38 C ?"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Délai d'apprition depuis la dernière cure"]= this.Delai_apparition.toString();
    data["Votre temperatue est supèrieure à 38 C ?"]= this.Mesure.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




