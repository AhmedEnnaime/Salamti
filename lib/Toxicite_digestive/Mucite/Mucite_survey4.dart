import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey3.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey5.dart';

class Mucite4 extends StatefulWidget {

  @override
  State<Mucite4> createState() => _Mucite4State();
}

class _Mucite4State extends State<Mucite4> {
  String val16='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Mucite',
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
                'La salive ',
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
                  'Transparente',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Transparente',
                groupValue: val16,
                onChanged: (value){

                  setState(() {
                    val16=value!;

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
                  'Epaisse, visqueuse',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'visqueuse',
                groupValue: val16,
                onChanged: (value){

                  setState(() {
                    val16=value!;

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
                  'Absente',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Absente',
                groupValue: val16,
                onChanged: (value){

                  setState(() {
                    val16=value!;

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite3()));

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
                        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite5()));

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
            )
          ],
        ),
      ),
    );
  }
}
