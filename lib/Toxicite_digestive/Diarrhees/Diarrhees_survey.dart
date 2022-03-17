import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Diarrhees/Diarrhees_survey2.dart';

class Diarrhees extends StatefulWidget {

  @override
  State<Diarrhees> createState() => _DiarrheesState();
}

class _DiarrheesState extends State<Diarrhees> {
  String val6='';
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
                'Nombre de selles par jour',
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
                  'Moins quatre selles par jour',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Moins quatre selles par jour',
                groupValue: val6,
                onChanged: (value){

                  setState(() {
                    val6=value!;

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
                  'Entre quatre et six selles par jour  ',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Entre quatre et six selles par jour',
                groupValue: val6,
                onChanged: (value){

                  setState(() {
                    val6=value!;

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
                  'Plus que sept selles par jour',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: 'Plus que sept selles par jour',
                groupValue: val6,
                onChanged: (value){
                  setState(() {
                    val6=value!;
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees2()));

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
