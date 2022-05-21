import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Diarrhees_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Diarrhees_Data/Abstract_class.dart';

class Diarrhees_Data implements Diarrhee_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Diarrhees>> getDiarrhees() async {
    List<Diarrhees> diarrheesList=[];
    var url=Uri.parse('$dataUrl/Diarrhees');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for (var i=0; i <body.length;i++){
      diarrheesList.add(Diarrhees.fromJson(body[i]));
    }
    return diarrheesList;
  }

  @override
  Future<String> postDiarrhees(Diarrhees diarrhees) async {
    print("${diarrhees.toJson()}");
    var url = Uri.parse('$dataUrl/Diarrhees/');
    var result='';
    var response = await http.post(url, body: diarrhees.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}