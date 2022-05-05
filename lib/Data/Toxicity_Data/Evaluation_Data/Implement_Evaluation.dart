import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Evaluation_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Evaluation_Data implements Evaluatio_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Evaluation_Model>> getEvaluation() {
    // TODO: implement getEvaluation
    throw UnimplementedError();
  }

  @override
  Future<String> postEvaluation(Evaluation_Model evaluation) async {
    print("${evaluation.toJson()}");
    var url = Uri.parse('$dataUrl/Evaluation/');
    var result='';
    var response = await http.post(url, body: evaluation.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}