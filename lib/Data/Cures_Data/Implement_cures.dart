import 'dart:convert';
import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Abstract_class.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/variables.dart';

class Cures_Data implements Cure_data{
  String _getMonthDate(int month) {
    if (month == 01) {
      return 'Janvier';
    } else if (month == 02) {
      return 'Février';
    } else if (month == 03) {
      return 'Mars';
    } else if (month == 04) {
      return 'Avril';
    } else if (month == 05) {
      return 'Mai';
    } else if (month == 06) {
      return 'Juin';
    } else if (month == 07) {
      return 'Juillet';
    } else if (month == 08) {
      return 'Aout';
    } else if (month == 09) {
      return 'Septembre';
    } else if (month == 10) {
      return 'Octobre';
    } else if (month == 11) {
      return 'Novembre';
    } else {
      return 'Decembre';
    }
  }
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
  @override
  Future<List<Cures_Model>> gettodayCures() async {
    List<Cures_Model> curesList=[];
    var url=Uri.parse('$dataUrl/Cures?La date de la prochaine cure=${DateTime.now().day.toString()} ${_getMonthDate(DateTime.now().month)} ${DateTime.now().year.toString()}');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
    for(var i=0;i<body.length;i++){
      curesList.add(Cures_Model.fromJson(body[i]));
    }
    return curesList;
  }
  @override
  Future<List<Cures_Model>> getHistoriqueCures() async {
    List<Cures_Model> curesList=[];
    var url=Uri.parse('$dataUrl/Cures?Patient_Ip=R123456');
    var response= await http.get(url);
    print('status code : ${response.statusCode}');
    var body = json.decode(response.body);
      curesList.add(Cures_Model.fromJson(body[body.length-1]));

    return curesList;
  }

}