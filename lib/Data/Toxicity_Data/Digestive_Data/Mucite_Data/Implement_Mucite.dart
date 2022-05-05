import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Mucite_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Mucite_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Mucite_Data implements Mucit_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Mucite_Model>> getMucite() {
    // TODO: implement getMucite
    throw UnimplementedError();
  }

  @override
  Future<String> postMucite(Mucite_Model mucite) async {
    print("${mucite.toJson()}");
    var url = Uri.parse('$dataUrl/Mucite/');
    var result='';
    var response = await http.post(url, body: mucite.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}