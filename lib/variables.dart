import 'package:flutter/cupertino.dart';

///////Digestive_survey////////
bool Nausees_value=false;
bool Diarrhees_value=false;
bool Vommissements_value=false;
bool Constipation_value=false;
bool Mucite_value=false;
bool Douleurs_value=false;
bool Gouts_value=false;
////////Nausees/////////
String val='';
////////Nausees_survey3///////
String val2='';
/////////Nausees_suervey6//////
String val5='';
String traitement='';
////////Nausees_survey4///////
String val3='';
////////Nausees_survey2///////
String val1='';
///////Nausees_survey5///////
bool Troubles_value=false;
bool Moins_urines_value=false;
bool Plus_urines_value=false;
bool Deshydratation_value=false;
bool Poids_value=false;
bool douleurs_value=false;
bool gouts_value=false;

//////////Diarrheea_survey4//////
bool Fatigue_value=false;
bool Denutrition_value=false;
bool Saignement_value=false;
bool neurologiques_value=false;
bool Fievre_value=false;
////////////Constipation_survey3//////
bool Crampes_value=false;
bool Digestif_value=false;
bool Vms_value=false;
bool Fvr_value=false;
//////Evaluation///////
bool plaintes_value=false;
bool ftg_value=false;
bool travail_value=false;
bool quotidiennes_value=false;
bool Autonomie_value=false;
bool Apetit_value=false;
bool Douleur_value=false;
bool depression_value=false;
///////Ajouter_patient/////
String sex_val='';
///////Cures//////
String cure_val='';
////////Diarrhees_survey/////
String val6='';
////////Diarrhes_survey2/////
TextEditingController duree = TextEditingController();
String val7='';
String val8='';
//////Diarrhees_survey3/////
String val9='';
///////Fievere_survey/////
String val10='';
TextEditingController delai = TextEditingController();
//////Constipation_survey2///////
String val12='';
////////Constipation_survey//////
String val11='';
//////rdv_medecin//////
bool medeci_matin1 = false;
bool medeci_matin2 = false;
bool medeci_matin3 = false;
bool medeci_matin4 = false;
bool medeci_matin5 = false;
bool medeci_matin6 = false;
bool medeci_midi1 = false;
bool medeci_midi2 = false;
bool medeci_midi3 = false;
bool medeci_midi4 = false;
bool medeci_midi5 = false;
bool medeci_midi6 = false;
////////rdv///////////
DateTime ?dateTime;
bool patient_matin1 = false;
bool patient_matin2 = false;
bool patient_matin3 = false;
bool patient_matin4 = false;
bool patient_matin5 = false;
bool patient_matin6 = false;
bool patient_midi1 = false;
bool patient_midi2 = false;
bool patient_midi3 = false;
bool patient_midi4 = false;
bool patient_midi5 = false;
bool patient_midi6 = false;
///////Mucite_survey///////
String val13='';
int score_voix = 0;
int mucite_voix(){
  if(val13 == 'Normale'){
    score_voix=1;
  }else if(val13 == 'Seche_Rauque'){
    score_voix=2;
  }else if(val13 == 'Difficile'){
    score_voix= 3;
  }
  return score_voix;
}
//////Mucite_survey2///////
int score_deglutition = 0;
String val14='';
int mucite_deglutition(){
  if(val14 == 'Normale'){
    score_deglutition= 1;
  }else if(val14 == 'Douloureuse'){
    score_deglutition= 2;
  }else if(val14 == 'Impossible'){
    score_deglutition= 3;
  }
  return score_deglutition;
}
///////Mucite_survey3//////
String val15='';
int score_langue = 0;
int mucite_langue(){
  if(val15 == 'Rose'){
    score_langue= 1;
  }else if(val15 == 'pale'){
    score_langue= 2;
  }else if(val15 == 'Fissuree'){
    score_langue= 3;
  }
  return score_langue;
}
/////Mucite_survey4//////
String val16='';
int score_salive = 0;
int mucite_salive(){
  if(val16 == 'Transparente'){
    score_salive= 1;
  }else if(val16 == 'visqueuse'){
    score_salive= 2;
  }else if(val16 == 'Absente'){
    score_salive= 3;
  }
  return score_salive;
}
//////Mucite_survey5//////
String val17='';
int score_muqueuses = 0;
int mucite_muqueuses(){
  if(val17 == 'humide'){
    score_muqueuses= 1;
  }else if(val17 == 'Inflammation'){
    score_muqueuses= 2;
  }else if(val17 == 'saignement'){
    score_muqueuses= 3;
  }
  return score_muqueuses;
}
///////Mucite_survey6///////
String val18='';
int score_gencives = 0;
int mucite_gencives(){
  if(val18 == 'fermes'){
    score_gencives= 1;
  }else if(val18 == 'Inflammatoires'){
    score_gencives= 2;
  }else if(val18 == 'spontane'){
    score_gencives= 3;
  }
  return score_gencives;
}
///////Mucite_survey7//////
String val19='';
int score_dents = 0;
int mucite_dents(){
  if(val19 == 'Propres'){
    score_dents= 1;
  }else if(val19 == 'Plaques'){
    score_dents= 2;
  }else if(val19 == 'debris'){
    score_dents= 3;
  }
  return score_dents;
}
///////Mucite_survey8//////
String val20='';
int score_levres = 0;
int mucite_levres(){
  if(val19 == 'lises'){
    score_levres= 1;
  }else if(val19 == 'Seches'){
    score_levres= 2;
  }else if(val19 == 'Ulcerations'){
    score_levres= 3;
  }
  return score_levres;
}
////////login////////
TextEditingController IP = TextEditingController();