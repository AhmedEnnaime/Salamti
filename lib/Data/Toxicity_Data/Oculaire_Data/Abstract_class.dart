import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';

abstract class Oculair_Data{
  Future <List<Oculaire>> getOculaire();
  Future <String> postOculaire(Oculaire oculaire);
}