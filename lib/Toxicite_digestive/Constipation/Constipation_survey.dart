import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey2.dart';

class Constipation extends StatefulWidget {

  @override
  State<Constipation> createState() => _ConstipationState();
}

class _ConstipationState extends State<Constipation> {
  String val11='';
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
                'Fréquence d’élimination des selles ',
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
                  'Occasionnelle',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Occasionnelle',
                groupValue: val11,
                onChanged: (value){

                  setState(() {
                    val11=value!;

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
                  'Intermittente   ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Intermittente ',
                groupValue: val11,
                onChanged: (value){

                  setState(() {
                    val11=value!;

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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation2()));

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
