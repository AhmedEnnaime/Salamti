import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Rash_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Implement_Rash.dart';

class Rashcontroller{
  final Ras_Data _ras_data;
  Rashcontroller(this._ras_data);

  Future<String> postRash(Rash rash) async{
    return _ras_data.postRash(rash);
  }
  Future<List<Rash>> getRash() async{
    return _ras_data.getRash();
  }
}