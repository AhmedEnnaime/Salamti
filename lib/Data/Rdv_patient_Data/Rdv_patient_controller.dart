import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Abstract_class.dart';

class Rdv_patientcontroller{
  final Rdv_patien_Data _rdv_patien_data;
  Rdv_patientcontroller(this._rdv_patien_data);

  Future<String> postRdv_patient(Rdv_patient rdv_patient) async{
    return _rdv_patien_data.postRdv_patient(rdv_patient);
  }
  Future<List<Rdv_patient>> getRdv_patient() async{
    return _rdv_patien_data.getRdv_patient();
  }
  Future<List<Rdv_patient>> getRdv_patient_medecin() async{
    return _rdv_patien_data.getRdv_patient_medecin();
  }
  Future<List<Rdv_patient>> getRdv_patient_today() async{
    return _rdv_patien_data.getRdv_patient_today();
  }
}