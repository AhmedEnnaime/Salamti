import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Implement_Rdv_medecin.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Abstract_class.dart';

class Rdv_medecincontroller{
  final Rdv_medeci_Data _rdv_medeci_data;
  Rdv_medecincontroller(this._rdv_medeci_data);

  Future<String> postRdv_medecin(Rdv_medecin rdv_medecin) async{
    return _rdv_medeci_data.postRdv_medecin(rdv_medecin);
  }
  Future<List<Rdv_medecin>> getRdv_medecin() async{
    return _rdv_medeci_data.getRdv_medecin();
  }
}