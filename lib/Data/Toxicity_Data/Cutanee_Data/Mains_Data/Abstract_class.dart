import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Mains_Data/Mains_Model.dart';

abstract class Main_Data{
  Future <List<Mains>> getMains();
  Future <String> postMains(Mains mains);
}