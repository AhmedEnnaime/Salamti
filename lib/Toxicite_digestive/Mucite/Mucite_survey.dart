import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Mucite/Mucite_survey2.dart';

class Mucite extends StatefulWidget {

  @override
  State<Mucite> createState() => _MuciteState();
}

class _MuciteState extends State<Mucite> {
  String val13='';
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
                'La voix',
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
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
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
            SizedBox(height: 20,),
            Card(
              margin: EdgeInsets.fromLTRB(15, 25, 16, 0),
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
                  primary: Colors.cyan[900],
                  minimumSize: Size(40, 40),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Mucite2()));

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
    );
  }
}
