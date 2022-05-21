import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Rash_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Rash_Data/Abstract_class.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Rash_Data implements Ras_Data{
  String dataUrl='http://10.0.2.2:3000';
  @override
  Future<List<Rash>> getRash() async {
    List<Rash> rashList=[];
    var url=Uri.parse('$dataUrl/Rash_cutane');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for (var i=0; i <body.length;i++){
      rashList.add(Rash.fromJson(body[i]));
    }
    return rashList;
  }

  @override
  Future<String> postRash(Rash rash) async {
    print("${rash.toJson()}");
    var url = Uri.parse('$dataUrl/Rash_cutane/');
    var result='';
    var response = await http.post(url, body: rash.toJson());
    print(response.statusCode);
    print(response.body);
    return 'true';
  }

}