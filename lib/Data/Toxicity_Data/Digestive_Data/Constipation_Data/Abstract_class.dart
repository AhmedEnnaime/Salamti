import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Constipation_Data/Constipation_Model.dart';

abstract class Constipatio_Data{
  Future <List<Constipation>> getConstipation();
  Future <String> postConstipation(Constipation constipation);
}