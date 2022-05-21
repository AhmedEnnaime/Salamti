import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Mains_Data/Mains_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Mains_Data/Abstract_class.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Mains_Data implements Main_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Mains>> getMains() async {
    List<Mains> mainsList=[];
    var url=Uri.parse('$dataUrl/Mains');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for (var i=0; i <body.length;i++){
      mainsList.add(Mains.fromJson(body[i]));
    }
    return mainsList;
  }

  @override
  Future<String> postMains(Mains mains) async {
    print("${mains.toJson()}");
    var url = Uri.parse('$dataUrl/Mains/');
    var result='';
    var response = await http.post(url, body: mains.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}