import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_Model.dart';
abstract class Diarrhee_Data{
  Future <List<Diarrhees>> getDiarrhees();
  Future <String> postDiarrhees(Diarrhees diarrhees);
}