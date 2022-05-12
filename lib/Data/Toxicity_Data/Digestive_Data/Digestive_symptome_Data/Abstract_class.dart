import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';

abstract class Digestive_symptom_Data{
  Future <List<Digestive_symptome>> getDigestive_symptome();
  Future <String> postDigestive_symptome(Digestive_symptome digestive_symptome);
}