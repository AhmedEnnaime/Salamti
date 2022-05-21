import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Ongles_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Ongles_Data/Abstract_class.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Ongles_Data implements Ongle_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Ongles>> getOngles() async {
    List<Ongles> onglesList=[];
    var url=Uri.parse('$dataUrl/Ongles');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for (var i=0; i <body.length;i++){
      onglesList.add(Ongles.fromJson(body[i]));
    }
    return onglesList;
  }

  @override
  Future<String> postOngles(Ongles ongles) async {
    print("${ongles.toJson()}");
    var url = Uri.parse('$dataUrl/Ongles/');
    var result='';
    var response = await http.post(url, body: ongles.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}