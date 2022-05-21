import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Abstract_class.dart';

class Nauseescontroller{
  final Nausee_Data _nausee_data;
  Nauseescontroller(this._nausee_data);

  Future<String> postNausees(Nausees nausees) async{
    return _nausee_data.postNausees(nausees);
  }
  Future<List<Nausees>> getNausees() async{
    return _nausee_data.getNausees();
  }

}