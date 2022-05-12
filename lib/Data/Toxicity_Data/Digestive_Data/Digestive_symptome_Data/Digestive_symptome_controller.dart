import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Abstract_class.dart';

class Digestive_symptomecontroller{
  final Digestive_symptom_Data _digestive_symptom_data;
  Digestive_symptomecontroller(this._digestive_symptom_data);

  Future<String> postDigestive_symptome(Digestive_symptome digestive_symptome) async{
    return _digestive_symptom_data.postDigestive_symptome(digestive_symptome);
  }
}