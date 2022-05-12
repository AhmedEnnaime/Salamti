import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_Model.dart';

abstract class Gonadiqu_Data{
  Future <List<Gonadique>> getGonadique();
  Future <String> postGonadique(Gonadique gonadique);
}