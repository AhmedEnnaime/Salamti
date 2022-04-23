import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';

abstract class Nausee_Data{
  Future <List<Nausees>> getNausees();
  Future <String> postNausees(Nausees nausees);
}