import 'package:flutter/material.dart';
import 'package:e_sante/Nausees_survey2.dart';
import 'package:e_sante/Nausees_survey4.dart';

class Nausees3 extends StatefulWidget {

  @override
  State<Nausees3> createState() => _Nausees3State();
}

class _Nausees3State extends State<Nausees3> {
  bool val=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Nausees/Vomissements',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(

          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Text(
                'Durée par jours',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 35, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Moins une heure',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Entre deux et quatre heures  ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: RadioListTile<bool>(
                title: Text(
                  'Plus aue six heures   ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: false,
                groupValue: val,
                onChanged: (value){
                  val=value!;
                  setState(() {

                  });

                },
              ),
            ),
            SizedBox(height: 20,),

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees2()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees4()));

                    },
                    child: Text(
                      'Continuer',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),


                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
