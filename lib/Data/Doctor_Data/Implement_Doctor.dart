import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';
import 'package:e_sante/Data/Doctor_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:e_sante/variables.dart';

class Doctor_Data implements Docto_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  void Login_patient(String Ip, String Password) {
    // TODO: implement Login_patient
  }

  @override
  Future<List<Doctor>> getDoctor() async{
    List<Doctor> doctorList=[];
    var url=Uri.parse('$dataUrl/Doctor?Ip=${Ip_medecin.text}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    doctorList.add(Doctor.fromJson(body[0]));
    return doctorList;

  }

  @override
  Future<String> patchDoctor(Doctor doctor) async {
    var url = Uri.parse('$dataUrl/Doctor?Ip=${Ip_medecin}');
    String resData='';
    await http.patch(
      url,
      body: {
        'Nom':(doctor.Nom),
      },
      headers: {'Authorization': 'your_token'},
    ).then((response) {
      Map<String,dynamic> result = json.decode(response.body);
      print(result);
      return resData=result['Nom'];
    });
    return resData;
  }

  @override
  void Login_Doctor(String Ip, String Password) {
    // TODO: implement Login_Doctor
  }

}