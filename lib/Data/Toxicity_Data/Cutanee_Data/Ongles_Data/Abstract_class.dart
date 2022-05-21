import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Ongles_Model.dart';

abstract class Ongle_Data{
  Future <List<Ongles>> getOngles();
  Future <String> postOngles(Ongles ongles);
}
