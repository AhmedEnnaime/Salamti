import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Gonadique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Gonadique_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Gonadique_Data implements Gonadiqu_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Gonadique>> getGonadique() {
    // TODO: implement getGonadique
    throw UnimplementedError();
  }

  @override
  Future<String> postGonadique(Gonadique gonadique) async {
    print("${gonadique.toJson()}");
    var url = Uri.parse('$dataUrl/Gonadique/');
    var result='';
    var response = await http.post(url, body: gonadique.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}