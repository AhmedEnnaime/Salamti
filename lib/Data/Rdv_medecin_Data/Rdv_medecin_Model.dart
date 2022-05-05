import 'package:e_sante/variables.dart';
class Rdv_medecin{
  DateTime? Day;
  bool? medecin_matin1;
  bool? medecin_matin2;
  bool? medecin_matin3;
  bool? medecin_matin4;
  bool? medecin_matin5;
  bool? medecin_matin6;
  bool? medecin_midi1;
  bool? medecin_midi2;
  bool? medecin_midi3;
  bool? medecin_midi4;
  bool? medecin_midi5;
  bool? medecin_midi6;


  Rdv_medecin({
    this.Day,
    this.medecin_matin1,
    this.medecin_matin2,
    this.medecin_matin3,
    this.medecin_matin4,
    this.medecin_matin5,
    this.medecin_matin6,
    this.medecin_midi1,
    this.medecin_midi2,
    this.medecin_midi3,
    this.medecin_midi4,
    this.medecin_midi5,
    this.medecin_midi6,

  });
  Rdv_medecin.fromJson(Map<String,dynamic>json){
    Day= json[dateTime];
    medecin_matin1= json[medeci_matin1];
    medecin_matin2= json[medeci_matin2];
    medecin_matin3= json[medeci_matin3];
    medecin_matin4= json[medeci_matin4];
    medecin_matin5= json[medeci_matin5];
    medecin_matin6= json[medeci_matin6];
    medecin_midi1= json[medeci_midi1];
    medecin_midi2= json[medeci_midi2];
    medecin_midi3= json[medeci_midi3];
    medecin_midi4= json[medeci_midi4];
    medecin_midi5= json[medeci_midi5];
    medecin_midi6= json[medeci_midi6];
  }
  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data["La date seléctionnée"]= this.Day.toString();
    data["9:00 AM"]= this.medecin_matin1.toString();
    data['9:30 AM']= this.medecin_matin2.toString();
    data['10:00 AM']= this.medecin_matin3.toString();
    data['10:30 AM']= this.medecin_matin4.toString();
    data["11:00 AM"]= this.medecin_matin5.toString();
    data["11:30 AM"]= this.medecin_matin6.toString();
    data['3:00 PM']= this.medecin_midi1.toString();
    data['3:30 PM']= this.medecin_midi2.toString();
    data["4:00 PM"]= this.medecin_midi3.toString();
    data['4:30 PM']= this.medecin_midi4.toString();
    data['5:00 PM']= this.medecin_midi5.toString();
    data['5:30 PM']= this.medecin_matin6.toString();
    return data;
  }

}




