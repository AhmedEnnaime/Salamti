import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey3.dart';

class Diarrhees2 extends StatefulWidget {

  @override
  State<Diarrhees2> createState() => _Diarrhees2State();
}

class _Diarrhees2State extends State<Diarrhees2> {
  String val7='';
  String val8='';
  TextEditingController duree = TextEditingController();
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
                'Durée de survenue',
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
              child: Padding(
                padding:  EdgeInsets.only(left: 40),
                child: TextFormField(
                  controller: duree,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Durée de survenue",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Text(
                'Douleurs abdominales associées ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Vous avez des douleurs \n abdominales associes ? ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 35,),
                    Text(
                      'Oui',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Radio<String>(
                      value: 'Oui',
                      groupValue: val7,
                      onChanged: (value){
                        setState(() {
                          val7=value!;
                        });

                      },
                    ),
                    Text(
                      'Non',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Radio<String>(
                      value: 'Non',
                      groupValue: val7,
                      onChanged: (value){
                        setState(() {
                          val7=value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 30),
              child: Text(
                'Interférent avec la prise alimentaire ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Cette diarrhees gene \n votre alimentation ? ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 30,),
                    Text(
                      'Oui',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Radio<String>(
                      value: 'Oui',
                      groupValue: val8,
                      onChanged: (value){
                        setState(() {
                          val8=value!;
                        });

                      },
                    ),
                    Text(
                      'Non',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Radio<String>(
                      value: 'Non',
                      groupValue: val8,
                      onChanged: (value){
                        setState(() {
                          val8=value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees3()));

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
