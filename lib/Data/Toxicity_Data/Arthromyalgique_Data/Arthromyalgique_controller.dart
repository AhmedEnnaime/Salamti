import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Abstract_class.dart';
import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Arthromyalgique_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Arthromyalgique_Data/Implement_Arthromyalgique.dart';

class Arthromyalgiquecontroller{
  final Arthromyalgiqu_Data _arthromyalgiqu_data;
  Arthromyalgiquecontroller(this._arthromyalgiqu_data);

  Future<String> postArthromyalgique(Arthromyalgique arthromyalgique) async{
    return _arthromyalgiqu_data.postArthromyalgique(arthromyalgique);
  }
}