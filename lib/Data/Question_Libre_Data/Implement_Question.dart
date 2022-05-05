import 'dart:convert';

import 'package:e_sante/Data/Question_Libre_Data/Abstract_class.dart';
import 'package:e_sante/Data/Question_Libre_Data/Question_Model.dart';
import 'package:http/http.dart' as http;

class Question_Data implements Questio_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Question>> getQuestion() async {
    List<Question> questionList=[];
    var url=Uri.parse('$dataUrl/Question_Libre');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    questionList.add(Question.fromJson(body[0]));

    return questionList;
  }

  @override
  Future<String> postQuestion(Question question) async{
    print("${question.toJson()}");
    var url = Uri.parse('$dataUrl/Question_Libre/');
    var result='';
    var response = await http.post(url, body: question.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';

  }

}