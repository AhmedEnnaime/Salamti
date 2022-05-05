import 'package:e_sante/Data/Question_Libre_Data/Question_Model.dart';
import 'package:e_sante/Data/Question_Libre_Data/Abstract_class.dart';
import 'package:e_sante/Data/Question_Libre_Data/Implement_Question.dart';

class Questioncontroller{
  final Question_Data _question_data;
  Questioncontroller(this._question_data);

  Future<List<Question>> getQuestion() async{
    return _question_data.getQuestion();
  }

  Future<String> postQuestion(Question question) async{
    return _question_data.postQuestion(question);
  }
}