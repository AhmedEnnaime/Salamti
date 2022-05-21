import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/variables.dart';
Patient patient = Patient(Ip: IP.text);
class Ongles{
  String? Purulente;
  String? Inflammatoire;
  String? Chaude;
  String? Douleureuse;
  String? Rouge;
  String? Aucun;
  String? Grade;
  String? Patient_Ip= patient.Ip;


  Ongles({
    this.Purulente,
    this.Inflammatoire,
    this.Chaude,
    this.Douleureuse,
    this.Rouge,
    this.Aucun,
    this.Grade,
    this.Patient_Ip,

  });
  Ongles.fromJson(Map<String,dynamic>json){
    Purulente= json["Collection purulente"];
    Inflammatoire= json["Inflammatoire"];
    Chaude= json["Chaude"];
    Douleureuse= json["Douleureuse"];
    Rouge= json["Rouge"];
    Aucun= json["Aucun"];
    Grade= json['Grade de Mains et pieds'];
    Patient_Ip= json['Patient_Ip'];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["Collection purulente"]= this.Purulente.toString();
    data["Inflammatoire"]= this.Inflammatoire.toString();
    data["Chaude"]= this.Chaude.toString();
    data["Douleureuse"]= this.Douleureuse.toString();
    data["Rouge"]= this.Rouge.toString();
    data["Aucun"]= this.Aucun.toString();
    data['Grade de Mains et pieds']= this.Grade.toString();
    data['Patient_Ip']= this.Patient_Ip.toString();
    return data;
  }

}




