import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey2.dart';

class Mucite extends StatefulWidget {

  @override
  State<Mucite> createState() => _MuciteState();
}

class _MuciteState extends State<Mucite> {

  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: WidthScreen,
              height: HeightScreen/3.8,
              color: Colors.pinkAccent[100],
              child: Center(
                child: Text(
                  'Mucite',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: WidthScreen,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/30),
                    child: Text(
                      'La voix',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Normale',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Normale',
                      groupValue: val13,
                      onChanged: (value){

                        setState(() {
                          val13=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 35,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Sèche/Rauque',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Seche_Rauque',
                      groupValue: val13,
                      onChanged: (value){

                        setState(() {
                          val13=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 35,),
                  Card(
                    margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: RadioListTile<String>(
                      title: Text(
                        'Difficulté à parler ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      value: 'Difficile',
                      groupValue: val13,
                      onChanged: (value){

                        setState(() {
                          val13=value!;

                        });

                      },
                    ),
                  ),
                  SizedBox(height: 60,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.pinkAccent[100],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite2()));
                      mucite_voix();
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
            ),
          ],
        ),
      ),
    );
  }
}
