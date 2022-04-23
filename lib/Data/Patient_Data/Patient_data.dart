import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Patient_Data/Patient.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:e_sante/Login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Patients_data implements Patient_data{
  String dataUrl='http://10.0.2.2:3000';
  bool isLoading=false;
  @override
  Future<List<Patient>> getPatient() async {
    List<Patient> patientList=[];
    var url=Uri.parse('$dataUrl/patients');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
      patientList.add(Patient.fromJson(body[0]));

    return patientList;
  }

  @override
  Future<String> patchPatient(Patient patient) async {
    var url = Uri.parse('$dataUrl/patients/${patient.Ip}');
    String resData='';
    await http.patch(
      url,
      body: {
        'Nom':(patient.Nom),
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
  Future<String> postPatient(Patient patient) async {
    print("${patient.toJson()}");
   var url = Uri.parse('$dataUrl/patients/');
   var result='';
   var response = await http.post(url, body: patient.toJson());
   print(response.statusCode);
   print(response.body);
   return 'true';
  }

  @override
  Login_patient(String Ip, String Password) async{
    String url = '$dataUrl/patients/';
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"Ip": Ip, "Password": Password};
    var jsonResponse;
    var res= await http.post(url,body: body);
    if(res.statusCode==200){
      jsonResponse= json.decode(res.body);
      print("Status code : ${res.statusCode}");
      print("Response Status : ${res.body}");
      if(jsonResponse!=null){
        sharedPreferences.setString("token", jsonResponse['token']);
        //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Acceuil()), (Route<dynamic> route) => false);

      }else{

      }
      print("Response Status : ${res.body}");
    }

  }

  @override
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "$dataUrl/patients";
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}

