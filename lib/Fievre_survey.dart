import 'package:flutter/material.dart';
import 'package:e_sante/Diarrhees_advices.dart';
import 'package:e_sante/Diarrhees_survey4.dart';

class Fievre extends StatefulWidget {

  @override
  State<Fievre> createState() => _FievreState();
}

class _FievreState extends State<Fievre> {
  String val10='';
  TextEditingController delai = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Fièvre',
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
                'Délai d’apparition depuis\n la dernière cure ',
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
                  controller: delai,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Délai d’apparition",
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
                'Mesure par thermomètre ',
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
                          'Votre temperature est\n superieure a 38°C ? ',
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
                      groupValue: val10,
                      onChanged: (value){
                        setState(() {
                          val10=value!;
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
                      groupValue: val10,
                      onChanged: (value){
                        setState(() {
                          val10=value!;
                        });
                      },
                    ),
                  ],
                ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees4()));

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Diarrhees_advices()));

                    },
                    child: Text(
                      'Terminer',
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
