import 'package:flutter/material.dart';

class Surpoids extends StatefulWidget {

  @override
  State<Surpoids> createState() => _SurpoidsState();
}

class _SurpoidsState extends State<Surpoids> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Surpoids',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 40, 25),
            child: Container(

            ),
          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: HeightScreen/20,right: WidthScreen/15),
                child: Text(
                  'Obésité et risque de développer un cancer du sein',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left: WidthScreen/35,right: WidthScreen/30),
              child: Text(
                'Un fléchissement de l’incidence du cancer du sein a été observé depuis quelques années en ce qui concerne les femmes ménopausées et ceci possiblement suite à la diminution de l’utilisation de la substitution hormonale.4 De nombreuses études montrent que le risque de développer un cancer du sein est augmenté chez les femmes obèses ménopausées, mais pas chez les femmes en préménopause.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: HeightScreen/45,right: WidthScreen/15),
                child: Text(
                  'Obésité et pronostic oncologique',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left: WidthScreen/35,right: WidthScreen/30),
              child: Text(
                ' L’étude ADEBAR comparait deux schémas de chimiothérapie adjuvante, une à base d’anthracycline et l’autre y associant un taxane chez les patientes avec un cancer du sein avec infiltration ganglionnaire.14 Cette étude a montré que quel que soit le type de chimiothérapie administrée, les patientes avec un IMC supérieur à 30 kg/m2 avaient une diminution significative de leurs survies sans rechute et globale comparées aux autres patientes.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding:  EdgeInsets.only(left: WidthScreen/35,right: WidthScreen/30),
              child: Text(
                "Deux tiers à trois-quarts des cancers du sein expriment les récepteurs hormonaux. Deux types de traitement antihormonal sont actuellement utilisés dans la prévention de la rechute. D’une part, l’inhibiteur du récepteur à l’œstrogène, le tamoxifène, d’autre part, les inhibiteurs de l’aromatase (IA) bloquant la transformation d’androgènes en œstrogènes dans la graisse, les muscles et le foie. L’étude ATAC a été une des études majeures ayant montré chez les patientes ménopausées, une supériorité des IA face au tamoxifène. Une sous-analyse de cette étude a révélé que non seulement les patientes avec un IMC supérieur à 35 kg/m2 avaient globalement un risque augmenté de rechute, mais qu’elles avaient aussi un bénéfice moindre de l’IA.15 Ceci a été également rapporté chez les patientes préménopausées dans la sous-analyse de l’étude ABCSG-12 comparant trois ans de blocage de la fonction ovarienne plus tamoxifène versus un IA. L’efficacité de l’IA était nettement inférieure chez les patientes avec une surcharge pondérale ou une obésité avec des HR de 1,6 et 2,1 respectivement pour le risque de rechute et la mortalité.16 Tout ceci suggère que chez les patientes avec une masse graisseuse plus importante, l’activité des aromatases serait plus élevée et donc moins bien inhibée par les IA administrés aux doses habituelles. Pour l‘instant, aucune étude n’a testé l’adaptation de la dose d’IA au poids. S’agissant de sous-études non préplanifiées, cela reste cependant une hypothèse nécessitant validation. Les experts internationaux, réunis à St-Gall en mars 2011, ont recommandé de ne pas tenir compte dans l’immédiat de ce critère pour le choix thérapeutique dans la pratique quotidienne.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding:  EdgeInsets.only(top: HeightScreen/45,right: WidthScreen/15),
                child: Text(
                  'Impact des changements du poids',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left: WidthScreen/35,right: WidthScreen/30),
              child: Text(
                "Est-ce que modifier son alimentation, perdre ou prendre du poids après le diagnostic du cancer du sein peut influencer le pronostic des patientes ? Une étude randomisée incluant 3088 patientes a tenté d’évaluer si une augmentation de la consommation de végétaux, fruits et fibres ainsi qu’une réduction des graisses durant quatre ans pouvaient modifier le devenir des patientes.18 Après un suivi moyen de 7,3 ans, cette étude n’a montré aucune amélioration des survies sans rechute ou globale. Par contre, une deuxième étude a randomisé 2437 patientes de 48 à 79 ans entre un groupe contrôle et un autre devant diminuer sa consommation de graisses.19 Une diminution significative de la consommation journalière de graisses ainsi qu’une perte pondérale moyenne de 2,7 kg ont été obtenues. Un impact oncologique a été alors observé avec un taux de survie sans rechute à 12,4% dans le groupe contrôle contre 9,8% dans le groupe régime (HR : 0,76 ; p = 0,034). L’analyse de sous-groupe a montré que ce bénéfice se limitait aux seules patientes avec un cancer du sein hormonorésistant.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],

        ),

      ),
    );
  }
}
