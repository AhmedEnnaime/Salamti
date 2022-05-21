import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Abstract_class.dart';

class Gonadiquecontroller{
  final Gonadiqu_Data _gonadiqu_data;
  Gonadiquecontroller(this._gonadiqu_data);

  Future<String> postGonadique(Gonadique gonadique) async {
    return _gonadiqu_data.postGonadique(gonadique);
  }
  Future<List<Gonadique>> getGonadique() async{
    return _gonadiqu_data.getGonadique();
  }
}