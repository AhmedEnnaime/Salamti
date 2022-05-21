import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Cutane_symptome_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Cutanee_Data/Cutane_symptome_Data/Abstract_class.dart';

class Cutane_symptomecontroller{
    final Cutane_symptom_Data _cutane_symptom_data;
    Cutane_symptomecontroller(this._cutane_symptom_data);

    Future<String> postCutane_symptome(Cutane_symptome cutane_symptome) async{
    return _cutane_symptom_data.postCutane_symptome(cutane_symptome);
    }
    Future<List<Cutane_symptome>> getCutane_symptome() async{
    return _cutane_symptom_data.getCutane_symptome();
    }

}