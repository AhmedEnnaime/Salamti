import 'package:flutter/material.dart';

class Fumer extends StatefulWidget {

  @override
  State<Fumer> createState() => _FumerState();
}

class _FumerState extends State<Fumer> {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Fumer',
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
                padding:  EdgeInsets.only(top: HeightScreen/20),
                child: Text(
                  'L’importance de l’arrêt du tabac après diagnostic du cancer du sein',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Text(
              'Une grande étude menée aux États-Unis entre 1988 et 2008 démontre que l’arrêt de la consommation tabagique, même après le diagnostic, réduit le taux de mortalité.\n    Cette étude a été conduite auprès de 20 600 femmes âgées de 20 à 79 ans, toutes porteuses d’un cancer du sein de stade précoce ou avancé',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              ' Il n’y a pas de mauvais moment pour arrêter de fumer. Quel que soit l’âge ou l’étape de la maladie, l’arrêt du tabac comporte des bénéfices pour les patients. C’est un facteur de risque évitable pour tous les cancers, puisque l’on estime que 40 % d’entre eux pourraient être épargnés grâce à l’arrêt de consommation tabagique.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],

        ),

      ),
    );
  }
}
