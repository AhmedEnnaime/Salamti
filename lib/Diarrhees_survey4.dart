import 'package:e_sante/Diarrhees_advices.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Diarrhees_survey3.dart';
import 'package:e_sante/Fievre_survey.dart';

class Diarrhees4 extends StatefulWidget {
  @override
  State<Diarrhees4> createState() => _Diarrhees4State();
}

class _Diarrhees4State extends State<Diarrhees4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Diarrhées',
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
                    'Fatigue importante',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  value: Fatigue_value,
                  onChanged: (val){
                    setState(() {
                      Fatigue_value=val!;
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
                      'Déshydratation, Dénutrition',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Denutrition_value,
                    onChanged: (val){
                      setState(() {
                        Denutrition_value=val!;
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
                      'Saignement digestif associé',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Saignement_value,
                    onChanged: (val){
                      setState(() {
                        Saignement_value=val!;
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
                      'Troubles neurologiques',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: neurologiques_value,
                    onChanged: (val){
                      setState(() {
                        neurologiques_value=val!;
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
                      'Fièvre',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Fievre_value,
                    onChanged: (val){
                      setState(() {
                        Fievre_value=val!;
                      });
                    },
                  ),
                )
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,top: 50),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees3()));

                    },
                    child: Text(
                      'Précedent',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      if(Fievre_value == true){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Fievre()));
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_advices()));
                      }


                    },
                    child: Text(
                      'Suivant',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],

        ) ,
      ),
    );
  }
}
