import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';

abstract class Cutane_symptom_Data{
  Future <List<Cutane_symptome>> getCutane_symptome();
  Future <String> postCutane_symptome(Cutane_symptome cutane_symptome);
}