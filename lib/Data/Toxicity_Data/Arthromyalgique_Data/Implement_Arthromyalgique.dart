import 'dart:convert';

import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Arthromyalgique_Data implements Arthromyalgiqu_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Arthromyalgique>> getArthromyalgique() async {
    List<Arthromyalgique> ArthromyalgiqueList=[];
    var url=Uri.parse('$dataUrl/Arthromyalgique?Patient_Ip=R123456');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0;i<body.length;i++){
      ArthromyalgiqueList.add(Arthromyalgique.fromJson(body[i]));
    }

    return ArthromyalgiqueList;
  }

  @override
  Future<String> postArthromyalgique(Arthromyalgique arthromyalgique) async {
    print("${arthromyalgique.toJson()}");
    var url = Uri.parse('$dataUrl/Arthromyalgique/');
    var result='';
    var response = await http.post(url, body: arthromyalgique.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}