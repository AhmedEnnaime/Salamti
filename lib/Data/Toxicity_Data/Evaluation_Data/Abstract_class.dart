import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Evaluation_Model.dart';

abstract class Evaluatio_Data{
  Future <List<Evaluation_Model>> getEvaluation();
  Future <String> postEvaluation(Evaluation_Model evaluation);
}