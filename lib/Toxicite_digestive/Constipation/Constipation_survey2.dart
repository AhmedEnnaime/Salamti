import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey3.dart';

class Constipation2 extends StatefulWidget {

  @override
  State<Constipation2> createState() => _Constipation2State();
}

class _Constipation2State extends State<Constipation2> {
  String val12='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Constipation',
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
                'Durée d’évolution',
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
              child: RadioListTile<String>(
                title: Text(
                  'Moins un jour',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Moins un jour',
                groupValue: val12,
                onChanged: (value){

                  setState(() {
                    val12=value!;

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
              child: RadioListTile<String>(
                title: Text(
                  'Persistante plus de 3 jours',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Persistante plus de 3 jours ',
                groupValue: val12,
                onChanged: (value){

                  setState(() {
                    val12=value!;

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
              child: RadioListTile<String>(
                title: Text(
                  'Persistante plus de 5 jours',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Persistante plus de 5 jours ',
                groupValue: val12,
                onChanged: (value){

                  setState(() {
                    val12=value!;

                  });

                },
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation()));

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
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation3()));

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
        ),
      ),
    );
  }
}
