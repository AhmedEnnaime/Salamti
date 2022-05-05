import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Implement_cures.dart';
import 'package:e_sante/Data/Cures_Data/Abstract_class.dart';

class Curescontroller{
  final Cure_data _cure_data;
  Curescontroller(this._cure_data);

  Future<String> postCures(Cures_Model cure) async{
    return _cure_data.postCures(cure);
  }
  Future<List<Cures_Model>> getCures() async{
    return _cure_data.getCures();
  }

  Future<List<Cures_Model>> getListCures() async{
    return _cure_data.getListCures();
  }
}