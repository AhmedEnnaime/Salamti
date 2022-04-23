import 'package:e_sante/Data/Patient_Data/User.dart';

abstract class Patient_data{
  Future <List<Patient>> getPatient();
  Future <String> patchPatient(Patient patient);
  Future <String> postPatient(Patient patient);
  void Login_patient(String Ip, String Password);
}