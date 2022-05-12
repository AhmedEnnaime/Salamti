import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_Model.dart';

abstract class Arthromyalgiqu_Data{
  Future <List<Arthromyalgique>> getArthromyalgique();
  Future <String> postArthromyalgique(Arthromyalgique arthromyalgique);
}