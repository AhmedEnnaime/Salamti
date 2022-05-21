import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Ongles_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Abstract_class.dart';

class Onglescontroller{
  final Ongle_Data _ongle_data;
  Onglescontroller(this._ongle_data);

  Future<String> postOngles(Ongles ongles) async{
    return _ongle_data.postOngles(ongles);
  }
  Future<List<Ongles>> getOngles() async{
    return _ongle_data.getOngles();
  }
}