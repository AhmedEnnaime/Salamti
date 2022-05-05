import 'package:e_sante/Data/Patient_Data/User.dart';

Patient patient = Patient();
class Mucite_Model{
  String? Voix;
  String? Deglutition;
  String? Langue;
  String? Salive;
  String? Muqueuses;
  String? Gencives;
  String? Dents;
  String? Levres;
  String? Patient_Ip= patient.Ip;


  Mucite_Model({
    this.Voix,
    this.Deglutition,
    this.Langue,
    this.Salive,
    this.Muqueuses,
    this.Gencives,
    this.Dents,
    this.Levres,
    this.Patient_Ip,

  });
  Mucite_Model.fromJson(Map<String,dynamic>json){
    Voix= json["La voix"];
    Deglutition= json["Déglutition"];
    Langue= json['La langue'];
    Salive= json['La salive'];
    Muqueuses= json["Les muqueuses"];
    Gencives= json["Les gencives"];
    Dents= json["Les dents"];
    Levres= json["Les lèvres"];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["La voix"]= this.Voix.toString();
    data["Déglutition"]= this.Deglutition.toString();
    data['La langue']= this.Langue.toString();
    data['La salive']= this.Salive.toString();
    data["Les muqueuses"]= this.Muqueuses.toString();
    data["Les gencives"]= this.Gencives.toString();
    data["Les dents"]= this.Dents.toString();
    data["Les lèvres"]= this.Levres.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




