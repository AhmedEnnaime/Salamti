import 'dart:convert';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';

class Rdv_patient_Data implements Rdv_patien_Data{
  String _getMonthDate(int month) {
    if (month == 01) {
      return 'Janvier';
    } else if (month == 02) {
      return 'Février';
    } else if (month == 03) {
      return 'Mars';
    } else if (month == 04) {
      return 'Avril';
    } else if (month == 05) {
      return 'Mai';
    } else if (month == 06) {
      return 'Juin';
    } else if (month == 07) {
      return 'Juillet';
    } else if (month == 08) {
      return 'Aout';
    } else if (month == 09) {
      return 'Septembre';
    } else if (month == 10) {
      return 'Octobre';
    } else if (month == 11) {
      return 'Novembre';
    } else {
      return 'Decembre';
    }
  }
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Rdv_patient>> getRdv_patient() async {
    List<Rdv_patient> rdv_medecinList=[];
    var url=Uri.parse('$dataUrl/Rdv_patient?Patient_Ip=${IP.text}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    rdv_medecinList.add(Rdv_patient.fromJson(body[body.length-1]));

    return rdv_medecinList;
  }

  @override
  Future<String> postRdv_patient(Rdv_patient rdv_patient) async {
    print("${rdv_patient.toJson()}");
    var url = Uri.parse('$dataUrl/Rdv_patient/');
    var result='';
    var response = await http.post(url, body: rdv_patient.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

  @override
  Future<List<Rdv_patient>> getRdv_patient_medecin() async {
    List<Rdv_patient> rdv_medecinList=[];
    var url=Uri.parse('$dataUrl/Rdv_patient?Doctor_Ip=${Ip_medecin.text}&La date du rendez-vous_gte=${DateTime.now().day.toString()} ${_getMonthDate(DateTime.now().month)} ${DateTime.now().year.toString()}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0; i<body.length; i++){
      rdv_medecinList.add(Rdv_patient.fromJson(body[i]));
    }
    return rdv_medecinList;
  }

  @override
  Future<List<Rdv_patient>> getRdv_patient_today() async {
    List<Rdv_patient> rdv_medecinList=[];
    var url=Uri.parse('$dataUrl/Rdv_patient?Doctor_Ip=${Ip_medecin.text}&La date du rendez-vous=${DateTime.now().day.toString()} ${_getMonthDate(DateTime.now().month)} ${DateTime.now().year.toString()}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0; i<body.length; i++){
      rdv_medecinList.add(Rdv_patient.fromJson(body[i]));
    }
    return rdv_medecinList;
  }

}