import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Constipation_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Constipation_Data/Constipation_Model.dart';
import 'package:http/http.dart' as http;

class Constipation_Data implements Constipatio_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Constipation>> getConstipation() {
    // TODO: implement getConstipation
    throw UnimplementedError();
  }

  @override
  Future<String> postConstipation(Constipation constipation) async {
    print("${constipation.toJson()}");
    var url = Uri.parse('$dataUrl/Constipation/');
    var result='';
    var response = await http.post(url, body: constipation.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}