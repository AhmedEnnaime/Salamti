import 'dart:convert';

import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Neurologique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Neurologique_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;

class Neurologique_Data implements Neurologiqu_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Neurologique>> getNeurologique() async {
    List<Neurologique> NeurologiqueList=[];
    var url=Uri.parse('$dataUrl/Neurologique?Patient_Ip=R123456');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0;i<body.length;i++){
      NeurologiqueList.add(Neurologique.fromJson(body[i]));
    }

    return NeurologiqueList;
  }

  @override
  Future<String> postNeurologique(Neurologique neurologique) async {
    print("${neurologique.toJson()}");
    var url = Uri.parse('$dataUrl/Neurologique/');
    var result='';
    var response = await http.post(url, body: neurologique.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}