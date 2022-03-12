import 'package:flutter/material.dart';
import 'package:e_sante/Acceuil.dart';

class Evaluation extends StatefulWidget {

  @override
  State<Evaluation> createState() => _EvaluationState();
}

class _EvaluationState extends State<Evaluation> {
  bool CheckBoxValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Evaluation generale',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 40, 25),
            child: Text(
              'Répondez aux questions honnetement',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Cocher les symptomes que vous sentez :',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Nausées',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(170, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {
                        //setState(() {
                        // isChecked = CheckBoxValue;
                        //});
                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Diarrhées ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(160, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(15, 10, 0, 10),
                    child: Text(
                      'Vommissements',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(110, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Constipation',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(140, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Mucite',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(195, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Text(
                      'Douleurs abdominales',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },

                    ),
                  )
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
              clipBehavior: Clip.antiAlias,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,)
              ),

              child: Row(
                children: [

                  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 10, 0, 10),
                    child: Column(
                      children: [
                        Text(
                          'Modification des gouts ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Text(
                          'des aliments ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 5, 0),
                    child: Checkbox(
                      value: CheckBoxValue,
                      onChanged: (bool? value) {

                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.cyan[900],
                    minimumSize: Size(40, 40),
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
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
      )
    );
  }
}
