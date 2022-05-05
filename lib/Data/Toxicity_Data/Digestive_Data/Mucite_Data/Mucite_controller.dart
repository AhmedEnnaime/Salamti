import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Abstract_class.dart';

class Mucitecontroller{
  final Mucit_Data _mucit_data;
  Mucitecontroller(this._mucit_data);

  Future<String> postMucite(Mucite_Model mucite) async{
    return _mucit_data.postMucite(mucite);
  }
}