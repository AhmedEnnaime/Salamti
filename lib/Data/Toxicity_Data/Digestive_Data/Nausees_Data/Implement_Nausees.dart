import 'package:http/http.dart' as http;
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Nausees_Data/Nausees_Model.dart';

class Nausees_Data implements Nausee_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Nausees>> getNausees() {
    // TODO: implement getNausees
    throw UnimplementedError();
  }

  @override
  Future<String> postNausees(Nausees nausees) async {
    print("${nausees.toJson()}");
    var url = Uri.parse('$dataUrl/Nausees/');
    var result='';
    var response = await http.post(url, body: nausees.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';

  }

}