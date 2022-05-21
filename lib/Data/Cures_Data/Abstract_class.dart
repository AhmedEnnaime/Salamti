import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';

abstract class Cure_data{
  Future <List<Cures_Model>> getCures();
  Future <List<Cures_Model>> getListCures();
  Future <String> postCures(Cures_Model cure);
  Future <List<Cures_Model>> getHistoriqueCures();
  Future <List<Cures_Model>> gettodayCures();
}