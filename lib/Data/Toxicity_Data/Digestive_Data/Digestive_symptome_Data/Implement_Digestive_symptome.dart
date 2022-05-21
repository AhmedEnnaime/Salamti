import 'dart:convert';

import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Digestive_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Digestive_Data/Digestive_symptome_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';

class Digestive_symptome_Data implements Digestive_symptom_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Digestive_symptome>> getDigestive_symptome() async {
    List<Digestive_symptome> DigestivesympromeList=[];
    var url=Uri.parse('$dataUrl/Digestive_symptome?Patient_Ip=R123456');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0;i<body.length;i++){
      DigestivesympromeList.add(Digestive_symptome.fromJson(body[i]));
    }

    return DigestivesympromeList;
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