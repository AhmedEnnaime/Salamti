import 'dart:convert';

import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';

class Cutane_symptome_Data implements Cutane_symptom_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Cutane_symptome>> getCutane_symptome() async {
    List<Cutane_symptome> Cutane_symptomeList=[];
    var url=Uri.parse('$dataUrl/Cutane_symptome?Patient_Ip=R123456');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0;i<body.length;i++){
      Cutane_symptomeList.add(Cutane_symptome.fromJson(body[i]));
    }

    return Cutane_symptomeList;

  }

  @override
  Future<String> postCutane_symptome(Cutane_symptome cutane_symptome) async {
    print("${cutane_symptome.toJson()}");
    var url = Uri.parse('$dataUrl/Cutane_symptome/');
    var result='';
    var response = await http.post(url, body: cutane_symptome.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}