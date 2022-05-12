import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Neurologique_Model.dart';

abstract class Neurologiqu_Data{
  Future <List<Neurologique>> getNeurologique();
  Future <String> postNeurologique(Neurologique neurologique);
}