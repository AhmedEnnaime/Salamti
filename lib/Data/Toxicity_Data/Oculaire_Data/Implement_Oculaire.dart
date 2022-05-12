import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Oculaire_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Oculaire_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Oculaire_Data implements Oculair_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Oculaire>> getOculaire() {
    // TODO: implement getOculaire
    throw UnimplementedError();
  }

  @override
  Future<String> postOculaire(Oculaire oculaire) async {
    print("${oculaire.toJson()}");
    var url = Uri.parse('$dataUrl/Oculaire/');
    var result='';
    var response = await http.post(url, body: oculaire.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}