import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Implement_Evaluation.dart';
import 'Evaluation_Model.dart';

class Evaluationcontroller{
  final Evaluatio_Data _evaluatio_data;
  Evaluationcontroller(this._evaluatio_data);

  Future<String> postEvaluation(Evaluation_Model evaluation) async{
    return _evaluatio_data.postEvaluation(evaluation);
  }
}