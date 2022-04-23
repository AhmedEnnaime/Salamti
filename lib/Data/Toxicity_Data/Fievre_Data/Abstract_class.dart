import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Fievre_Model.dart';

abstract class Fievr_Data{
  Future <List<Fievre_Model>> getFievre();
  Future <String> postFievre(Fievre_Model fievre);
}