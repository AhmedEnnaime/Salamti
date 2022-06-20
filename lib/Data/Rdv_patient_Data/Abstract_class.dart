import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';

abstract class Rdv_patien_Data{
  Future <List<Rdv_patient>> getRdv_patient();
  Future <List<Rdv_patient>> getRdv_patient_medecin();
  Future <String> postRdv_patient(Rdv_patient rdv_patient);
  Future <List<Rdv_patient>> getRdv_patient_today();
  Future <String> deleteRdv_patient(Rdv_patient rdv_patient);
}