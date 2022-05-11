import 'package:e_sante/Data/Doctor_Data/Abstract_class.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';

class Doctorcontroller{
  final Docto_Data _docto_data;
  Doctorcontroller(this._docto_data);
  Future<List<Doctor>> getDoctor() async{
    return _docto_data.getDoctor();
  }

  Future<String> patchtDoctor(Doctor doctor) async{
    return _docto_data.patchDoctor(doctor);
  }

}