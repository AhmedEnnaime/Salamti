import 'package:http/http.dart' as http;
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Fievre_Data/Fievre_Model.dart';

class Fievre_Data implements Fievr_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Fievre_Model>> getFievre() {
    // TODO: implement getFievre
    throw UnimplementedError();
  }

  @override
  Future<String> postFievre(Fievre_Model fievre) async {
    print("${fievre.toJson()}");
    var url = Uri.parse('$dataUrl/patients/');
    var result='';
    var response = await http.post(url, body: fievre.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}