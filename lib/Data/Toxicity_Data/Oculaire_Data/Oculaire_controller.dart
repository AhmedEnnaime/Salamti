import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Abstract_class.dart';

class Oculairecontroller{
  final Oculair_Data _oculair_data;
  Oculairecontroller(this._oculair_data);

  Future<String> postOculaire(Oculaire oculaire) async{
    return _oculair_data.postOculaire(oculaire);
  }
}