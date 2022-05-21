import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Rash_Model.dart';

abstract class Ras_Data{
  Future <List<Rash>> getRash();
  Future <String> postRash(Rash rash);
}