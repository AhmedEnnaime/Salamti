import 'dart:convert';
import 'package:e_sante/Data/User.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController{
  var patientList=<Patient>[].obs;
  var isLoading = true.obs;
  @override
  void onInit(){
    super.onInit();
    fetchPatientData();
  }
  Future<void> fetchPatientData() async{
    final response= await http.get(Uri.parse('http://10.0.2.2:3000/patients?Ip=C123456'));
    if(response.statusCode==200){

      for(var i = 0; i < response.body.length; i++){
        Patient patient= Patient.fromJson(jsonDecode(response.body[i]));

        patientList.add(Patient(
            Ip: patient.Ip,
            Nom: patient.Nom,
            Age: patient.Age,
            Mail: patient.Mail,
            Tel: patient.Tel,
            Password: patient.Password),
        );

      }
      isLoading.value=true;

    }else{
      Get.snackbar('Error loading data!', 'Sever responded: ${response.statusCode}:${response.reasonPhrase.toString()}');
    }

  }
}