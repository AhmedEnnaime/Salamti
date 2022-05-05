import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_Model.dart';

abstract class Mucit_Data{
  Future <List<Mucite_Model>> getMucite();
  Future <String> postMucite(Mucite_Model mucite);

}