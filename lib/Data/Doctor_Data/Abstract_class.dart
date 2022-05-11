import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';

abstract class Docto_Data{
  Future <List<Doctor>> getDoctor();
  Future <String> patchDoctor(Doctor doctor);
  void Login_Doctor(String Ip, String Password);

}