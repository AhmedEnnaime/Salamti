import 'dart:convert';
import 'package:e_sante/Data/Patient_Data/Patient.dart';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/patient_controller.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';

class Rdv_medecin_Data implements Rdv_medeci_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Rdv_medecin>> getRdv_medecin() async {
    var patientcontroller = Patientcontroller(Patients_data());
    List<Rdv_medecin> rdv_medecinList=[];
    var url=Uri.parse('$dataUrl/Rdv_medecin');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    rdv_medecinList.add(Rdv_medecin.fromJson(body[body.length-2]));

    return rdv_medecinList;
  }

  @override
  Future<String> postRdv_medecin(Rdv_medecin rdv_medecin) async {
    print("${rdv_medecin.toJson()}");
    var url = Uri.parse('$dataUrl/Rdv_medecin/');
    var result='';
    var response = await http.post(url, body: rdv_medecin.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}