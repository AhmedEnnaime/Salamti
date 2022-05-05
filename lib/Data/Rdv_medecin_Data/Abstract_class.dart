import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';

abstract class Rdv_medeci_Data{
  Future <List<Rdv_medecin>> getRdv_medecin();
  Future <String> postRdv_medecin(Rdv_medecin rdv_medecin);
}