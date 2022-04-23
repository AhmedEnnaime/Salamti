import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Abstract_class.dart';

class Diarrheescontroller{
  final Diarrhee_Data _diarrhee_data;
  Diarrheescontroller(this._diarrhee_data);

  Future<String> postDiarrhees(Diarrhees diarrhees) async{
    return _diarrhee_data.postDiarrhees(diarrhees);
  }

}