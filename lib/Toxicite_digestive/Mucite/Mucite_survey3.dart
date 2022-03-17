import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey2.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey4.dart';

class Mucite3 extends StatefulWidget {

  @override
  State<Mucite3> createState() => _Mucite3State();
}

class _Mucite3State extends State<Mucite3> {
  String val15='';
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
                'La langue',
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
                  'Rose et humide',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Rose',
                groupValue: val15,
                onChanged: (value){

                  setState(() {
                    val15=value!;

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
                  'Pâteuse et pale ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'pale',
                groupValue: val15,
                onChanged: (value){

                  setState(() {
                    val15=value!;

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
                  'Fissurée',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Fissuree',
                groupValue: val15,
                onChanged: (value){

                  setState(() {
                    val15=value!;

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite2()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite4()));

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
