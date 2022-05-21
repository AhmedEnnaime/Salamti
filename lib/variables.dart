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
TextEditingController Traitement = TextEditingController();
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
String rdv_time='';
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
int final_score = 0;
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
TextEditingController Mp = TextEditingController();
/////////login_medecin//////////
TextEditingController Ip_medecin = TextEditingController();
/////Neurologique_survey///////
String val21='';
//////Neurologique_survey2//////
bool Picotements_val = false;
bool fourmillements_val = false;
bool dysethesies_val = false;
bool brulure_val = false;
//////Neurologique_survey3/////
DateTime? neuro_day;
bool Escaliers_val = false;
bool Extension_val = false;
bool dlr_val = false;
bool Aucun_val = false;
bool Qtd_val = false;
////////Arhtromyalgique_survey//////
String val22='';
TextEditingController Evo_duree = TextEditingController();
TextEditingController delai_apparition = TextEditingController();
//////////Arthromyalgique_survey2////////
bool Hanches_val = false;
bool Epaules_val = false;
bool Membres_val = false;
bool Aucun_arth_val = false;
/////////Arthromyalgique_survey3//////
DateTime? arthromyalgique_day;
bool musculaires_val = false;
bool diffuses_val = false;
bool arthralgies_val = false;
/////////Ocuulaire_survey/////////////
String val23='';
TextEditingController Evo_duree_oculaire = TextEditingController();
TextEditingController delai_oculaire = TextEditingController();
///////Oculaire_survey2/////////////
bool rougueur_val = false;
bool larmoiement_val = false;
bool odeme_val = false;
bool sensation_val = false;
////////Oculaire_survey3///////
DateTime? oculaire_day;
bool acuite_val = false;
bool fievre_val = false;
bool Aucun_oculaire_val = false;
/////Oculaire_grading//////
String Oculaire_grading(){
  if(acuite_val == true || fievre_val == true){
    return 'Hopital';
  }else return 'Ordonance';
}
////////Gonadique_survey//////
DateTime? gonadique_day;
TextEditingController apprition_cures = TextEditingController();
bool Irregularite_val = false;
bool rythme_val = false;
bool interruption_val = false;
bool derivation_val = false;
/////Digestive_symptome_Grading///////
String Nausees_grade(){
  if(Nausees_value == true){
    if(Troubles_value==true || Moins_urines_value==true || Plus_urines_value==true || Deshydratation_value==true || Poids_value==true || douleurs_value==true || gouts_value==true){
      return 'Grade 4';
    }else if(val3=='Un seule repas' || val1=='Plus que six'){
      return 'Grade 3';
    }else if(val1=='Entre deux et cinq'){
      return 'Grade 2';
    }else return 'Grade 1';
  }else return 'Grade 0';
}
String Diarrhees_grade(){
  if(Diarrhees_value == true){
    if(val6 == 'Plus que sept selles par jour' || Fatigue_value == true || Denutrition_value == true || Saignement_value == true || neurologiques_value == true || Fievre_value == true){
      return 'Grade 3';
    }else if(val6 == 'Entre quatre et six selles par jour'){
      return 'Grade 2';
    }else return 'Grade 1';
  }else return 'Grade 0';
}
String Constipation_grade(){
  if(Constipation_value == true){
    if(Crampes_value == true || Digestif_value == true || Vms_value == true || Fvr_value == true){
      return "Grade 3";
    }else if(val12 == 'Persistante plus de 3 jours'){
      return 'Grade 2';
    }else return 'Grade 1';
  }else return 'Grade 0';
}
String Mucite_grade(){
  if(Mucite_value == true){
    if(16< final_score){
      return 'Grade 3';
    }else if(final_score > 8 && final_score <=16){
      return 'Grade 2';
    }else return 'Grade 1';
  }else return 'Grade 0';
}
/////Digestive_survey///////
DateTime? toxicity_day;
////Cutanee_survey////////
DateTime? cutanee_day;
bool Rash_value = false;
bool Mains_value = false;
bool Ongles_value = false;
bool Infiltration_value = false;
bool Alopecie_value = false;
bool Suivi_value = false;
/////Rash_cutane_survey//////
bool Visage = false;
bool Plis = false;
bool Peaux = false;
TextEditingController autre = TextEditingController();
////Rash_cutane_survey2///////
String val24 = '';
/////Rash_cutane_survey3//////
bool Prurit = false;
bool Douleur_rash = false;
bool brulure_rash = false;
bool Fievre_rash = false;
bool impact_rash = false;
TextEditingController delai_rash = TextEditingController();
/////Rash_cutane_survey4/////
String val25='';
/////Rash_grading///////
String Rash_grade(){
  if(Rash_value == true){
    if(val25=='Plus que 30%' || Fievre_rash == true || val25 == 'Surinfection mycosique' || val25 == 'Surinfection bactérienne'){
      return 'Grade 3';
    }else if(val24 == 'Entre 10 et 30%' && impact_rash == true){
      return 'Grade 2';
    }else return 'Grade 1';

  }else return 'Grade 0';
}
/////Mains_survey//////
String val26='';
///////Mains_survey2/////
String val27='';
/////Mains_grading////
String Mains_grade(){
  if(Mains_value == true){
    if(val27 == 'Elementaire' || val26 == 'etat3'){
      return 'Grade 3';
    }else if(val26 == 'etat2' || val27 == 'Instrumentale'){
      return 'Grade 2';
    }else return 'Grade 1';

  }else return 'Grade 0';
}
//////Ongles_survey///////
bool Purulente = false;
bool Infla = false;
bool Chaude = false;
bool Doul = false;
bool Rouge = false;
bool Aucun_ongles = false;
/////Ongles_grading/////
String Ongles_grade(){
  if(Ongles_value == true) {
    if (Purulente == true || Infla == true || Chaude == true || Doul == true || Rouge == true) {
      return 'Hopital';
    } else return 'Rassurement';
  }else return 'Rassurement';
}
//////Neurologique_grading/////
String Neurologique_grade(){
  if(Escaliers_val == true || Extension_val == true || dlr_val == true || Qtd_val == true) {
    return 'Ordonnance';
  }else return 'Rassurement';

}
