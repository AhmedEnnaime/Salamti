class Rdv_medecin{
  String? Day;
  String? medecin_matin1;
  String? medecin_matin2;
  String? medecin_matin3;
  String? medecin_matin4;
  String? medecin_matin5;
  String? medecin_matin6;
  String? medecin_midi1;
  String? medecin_midi2;
  String? medecin_midi3;
  String? medecin_midi4;
  String? medecin_midi5;
  String? medecin_midi6;
  String? Doctor_Ip;


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
    this.Doctor_Ip

  });
  Rdv_medecin.fromJson(Map<String,dynamic>json){
    Day= json['La date seléctionnée'];
    medecin_matin1= json["9:00 AM"];
    medecin_matin2= json['9:30 AM'];
    medecin_matin3= json['10:00 AM'];
    medecin_matin4= json['10:30 AM'];
    medecin_matin5= json['11:00 AM'];
    medecin_matin6= json["11:30 AM"];
    medecin_midi1= json["3:00 AM"];
    medecin_midi2= json['3:30 PM'];
    medecin_midi3= json['4:00 PM'];
    medecin_midi4= json["4:30 PM"];
    medecin_midi5= json['5:00 PM'];
    medecin_midi6= json['5:30 PM'];
    Doctor_Ip= json['Doctor_Ip'];
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
    data['Doctor_Ip']= this.Doctor_Ip.toString();
    return data;
  }

}




