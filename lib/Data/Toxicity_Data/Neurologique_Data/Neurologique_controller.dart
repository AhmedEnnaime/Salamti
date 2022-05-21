import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Neurologique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Abstract_class.dart';

class Neurologiquecontroller{
  final Neurologiqu_Data _neurologiqu_data;
  Neurologiquecontroller(this._neurologiqu_data);

  Future<String> postNeurologique(Neurologique neurologique) async{
    return _neurologiqu_data.postNeurologique(neurologique);
  }
  Future<List<Neurologique>> getNeurologique() async{
    return _neurologiqu_data.getNeurologique();
  }
}