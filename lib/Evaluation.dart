import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';


class Evaluation extends StatefulWidget {
  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {

  @override
  Widget build(BuildContext context) {
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
                  title: Text(
                    'Présence de plaintes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

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
                    title: Text(
                      'Fatigue',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

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
                    title: Text(
                      'Capacité de travail',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

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
                    title: Text(
                      'Activités quotidiennes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

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
                    title: Text(
                      'Autonomie ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

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
                  title: Text(
                    'Appétit  ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

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
                  title: Text(
                    'Douleur',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

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
                  title: Text(
                    'Anxiété/dépression ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

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
