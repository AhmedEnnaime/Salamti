import 'dart:convert';
import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';
class Cures_Data implements Cure_data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Cures_Model>> getCures() async {
    List<Cures_Model> curesList=[];
    var url=Uri.parse('$dataUrl/Cures?Patient_Ip=${IP.text}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    curesList.add(Cures_Model.fromJson(body[body.length-1]));
    //print(response.body[1]);

    return curesList;
  }

  @override
  Future<String> postCures(Cures_Model cure) async{
    print("${cure.toJson()}");
    var url = Uri.parse('$dataUrl/Cures/');
    var result='';
    var response = await http.post(url, body: cure.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

  @override
  Future<List<Cures_Model>> getListCures() async {
    List<Cures_Model> curesList=[];
    var url=Uri.parse('$dataUrl/Cures');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for (var i=0;i<body.length;i++){
      curesList.add(Cures_Model.fromJson(body[i]));
    }
    return curesList;
  }

}