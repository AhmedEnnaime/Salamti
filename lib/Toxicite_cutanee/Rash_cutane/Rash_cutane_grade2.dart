import 'package:e_sante/Toxicite_cutanee/Rash_cutane/Rash_cutane_advices.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_advices.dart';
import 'package:flutter/material.dart';

class Rash_cutane_grade2 extends StatelessWidget {

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
                  'Conduite a suivre',
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
                  Center(
                      child: Image.asset(
                        'assets/grade2.png',
                        width: WidthScreen,
                        height: HeightScreen/1.2,
                      )
                  ),
                  SizedBox(height: 20,),

                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent[100],
                          minimumSize: Size(40, 40),
                          padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Rash_cutane_advices()));

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
            ),
          ],
        ),
      ),
    );
  }
}
