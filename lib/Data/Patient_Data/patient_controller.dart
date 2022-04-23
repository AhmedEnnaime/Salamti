import 'package:e_sante/Data/Patient_Data/Patient.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';

class Patientcontroller{
  final Patient_data _patient_data;
  Patientcontroller(this._patient_data);
  Future<List<Patient>> fetchPatientList() async{
    return _patient_data.getPatient();
  }

  Future<String> postPatient(Patient patient) async{
    return _patient_data.postPatient(patient);
  }

  Login_patient(String Ip,String Password) async{
    return _patient_data.Login_patient(Ip, Password);
  }

  Future<String> patchtPatient(Patient patient) async{
    return _patient_data.patchPatient(patient);
  }

}