import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Constipation_Data/Constipation_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Constipation_Data/Abstract_class.dart';

class Constipationcotroller{
  final Constipatio_Data _constipatio_data;
  Constipationcotroller(this._constipatio_data);

  Future<String> postConstipation(Constipation constipation) async{
    return _constipatio_data.postConstipation(constipation);
  }
}