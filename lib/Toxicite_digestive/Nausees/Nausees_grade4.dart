import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_advices.dart';

class Nausees_grade4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Conduite a suivre',
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
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Text(
                "Vous devez s'orienter a l'hopital\n           au plus tot possible",
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 60,),
          
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.cyan[900],
                  minimumSize: Size(40, 40),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees_advices()));

              },
              child: Text(
                'Continuer',
                style: TextStyle(
                    fontSize: 22
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
