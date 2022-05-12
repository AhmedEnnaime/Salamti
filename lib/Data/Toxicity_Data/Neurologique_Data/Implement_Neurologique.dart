import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Neurologique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Neurologique_Data implements Neurologiqu_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Neurologique>> getNeurologique() {
    // TODO: implement getNeurologique
    throw UnimplementedError();
  }

  @override
  Future<String> postNeurologique(Neurologique neurologique) async {
    print("${neurologique.toJson()}");
    var url = Uri.parse('$dataUrl/Neurologique/');
    var result='';
    var response = await http.post(url, body: neurologique.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}