import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Fievre_Model.dart';
import 'package:e_sante/Fievre_survey.dart';

class Fievrecontroller{
  final Fievr_Data _fievr_data;
  Fievrecontroller(this._fievr_data);

  Future<String> postFievre(Fievre_Model fievre) async{
    return _fievr_data.postFievre(fievre);
  }
}