import 'package:e_sante/Data/Question_Libre_Data/Question_Model.dart';

abstract class Questio_Data{
  Future <List<Question>> getQuestion();
  Future <String> postQuestion(Question question);
}