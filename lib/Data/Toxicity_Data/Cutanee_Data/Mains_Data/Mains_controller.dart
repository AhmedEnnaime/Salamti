import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Mains_Data/Mains_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Mains_Data/Abstract_class.dart';

class Mainscontroller{
  final Main_Data _main_data;
  Mainscontroller(this._main_data);

  Future<String> postMains(Mains mains) async{
    return _main_data.postMains(mains);
  }
  Future<List<Mains>> getMains() async{
    return _main_data.getMains();
  }
}