import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Digestive_symptome_Data implements Digestive_symptom_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Digestive_symptome>> getDigestive_symptome() {
    // TODO: implement getDigestive_symptome
    throw UnimplementedError();
  }

  @override
  Future<String> postDigestive_symptome(Digestive_symptome digestive_symptome) async {
    print("${digestive_symptome.toJson()}");
    var url = Uri.parse('$dataUrl/Digestive_symptome/');
    var result='';
    var response = await http.post(url, body: digestive_symptome.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}