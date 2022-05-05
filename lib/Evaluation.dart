import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Evaluation_Model.dart';
import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Evaluation_controller.dart';
import 'package:e_sante/Data/Toxicity_Data/Evaluation_Data/Implement_Evaluation.dart';


class Evaluation extends StatefulWidget {
  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var evaluationcontroller = Evaluationcontroller(Evaluation_Data());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Evaluation generale',
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
        child:Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Cocher les symptomes que vous sentez :',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,top: 20),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                child: CheckboxListTile(
                  title: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context)=>AlertDialog(

                          content: Image.asset(
                            'assets/plainte.jpg',
                            fit: BoxFit.cover,

                          ),
                        ),
                        barrierDismissible: true,
                      );
                    },
                    child: Text(
                      'Présence de plaintes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black

                      ),
                    ),

                  ),
                  value: plaintes_value,
                  onChanged: (val){
                    setState(() {
                      plaintes_value=val!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child:CheckboxListTile(
                    title: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(

                            content: Image.asset(
                              'assets/Fatigue.jpg',
                              fit: BoxFit.cover,

                            ),
                          ),
                          barrierDismissible: true,
                        );
                      },
                      child: Text(
                        'Fatigue',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),
                      ),

                    ),
                    value: ftg_value,
                    onChanged: (val){
                      setState(() {
                        ftg_value=val!;
                      });
                    },
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child:CheckboxListTile(
                    title: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(

                            content: Image.asset(
                              'assets/travail.jpg',
                              fit: BoxFit.cover,

                            ),
                          ),
                          barrierDismissible: true,
                        );
                      },
                      child: Text(
                        'Capacité de travail',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),
                      ),

                    ),
                    value: travail_value,
                    onChanged: (val){
                      setState(() {
                        travail_value=val!;
                      });
                    },
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child: CheckboxListTile(
                    title: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(

                            content: Image.asset(
                              'assets/activites.jpg',
                              fit: BoxFit.cover,

                            ),
                          ),
                          barrierDismissible: true,
                        );
                      },
                      child: Text(
                        'Activités quotidiennes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),
                      ),

                    ),
                    value: quotidiennes_value,
                    onChanged: (val){
                      setState(() {
                        quotidiennes_value=val!;
                      });
                    },
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child: CheckboxListTile(
                    title: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(

                            content: Image.asset(
                              'assets/autonomie.jpg',
                              fit: BoxFit.cover,

                            ),
                          ),
                          barrierDismissible: true,
                        );
                      },
                      child: Text(
                        'Autonomie ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black

                        ),
                      ),

                    ),
                    value: Autonomie_value,
                    onChanged: (val){
                      setState(() {
                        Autonomie_value=val!;
                      });
                    },
                  ),
                ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                child: CheckboxListTile(
                  title: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context)=>AlertDialog(

                          content: Image.asset(
                            'assets/apetit.jpg',
                            fit: BoxFit.cover,

                          ),
                        ),
                        barrierDismissible: true,
                      );
                    },
                    child: Text(
                      'Appétit  ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black

                      ),
                    ),

                  ),
                  value: Apetit_value,
                  onChanged: (val){
                    setState(() {
                      Apetit_value=val!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                child: CheckboxListTile(
                  title: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context)=>AlertDialog(

                          content: Image.asset(
                            'assets/douleur.jpg',
                            fit: BoxFit.cover,

                          ),
                        ),
                        barrierDismissible: true,
                      );
                    },
                    child: Text(
                      'Douleur',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black

                      ),
                    ),

                  ),
                  value: Douleur_value,
                  onChanged: (val){
                    setState(() {
                      Douleur_value=val!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                child: CheckboxListTile(
                  title: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context)=>AlertDialog(

                          content: Image.asset(
                            'assets/depression.jpg',
                            fit: BoxFit.cover,

                          ),
                        ),
                        barrierDismissible: true,
                      );
                    },
                    child: Text(
                      'Anxiété/dépression ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black

                      ),
                    ),

                  ),
                  value: depression_value,
                  onChanged: (val){
                    setState(() {
                      depression_value=val!;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,top: 50),
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Evaluation_Model evaluation = Evaluation_Model(Presence_Plaintes:plaintes_value,Fatigue: ftg_value,Capacite_travail: travail_value,Activites_quotidiennes: quotidiennes_value,Autonomie: Autonomie_value,Apetit: Apetit_value,Douleur: Douleur_value,Depression: depression_value,Patient_Ip: IP.text );
                      evaluationcontroller.postEvaluation(evaluation);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));

                    },
                    child: Text(
                      'Confirmer',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),
                ),
            ]
          ),
        ),
    );
  }
}
