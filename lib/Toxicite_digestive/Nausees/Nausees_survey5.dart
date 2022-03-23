import 'package:flutter/material.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey4.dart';
import 'package:e_sante/Toxicite_digestive/Nausees/Nausees_survey6.dart';
import 'package:e_sante/variables.dart';

class Nausees5 extends StatefulWidget {
  @override
  State<Nausees5> createState() => _Nausees5State();
}

class _Nausees5State extends State<Nausees5> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          title: Text(
            'Nausees/Vomissements',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding:  EdgeInsets.fromLTRB(0, 0, 40, 25),
              child: Container(

              ),
            ),

          ),
        ),
        body: SingleChildScrollView(
          child:Column(
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
              Padding(
                padding:  EdgeInsets.only(left: 10,top: 20),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      'Troubles neurologiques',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Troubles_value,
                    onChanged: (val){
                      setState(() {
                        Troubles_value=val!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child:CheckboxListTile(
                      title: Text(
                        'Envie d’uriner moins fréquente',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Moins_urines_value,
                      onChanged: (val){
                        setState(() {
                          Moins_urines_value=val!;
                        });
                      },
                    ),
                  )
              ),
              SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child:CheckboxListTile(
                      title: Text(
                        'Urines plus foncés que d’habitude',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Plus_urines_value,
                      onChanged: (val){
                        setState(() {
                          Plus_urines_value=val!;
                        });
                      },
                    ),
                  )
              ),
              SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: CheckboxListTile(
                      title: Text(
                        'Déshydratation',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Deshydratation_value,
                      onChanged: (val){
                        setState(() {
                          Deshydratation_value=val!;
                        });
                      },
                    ),
                  )
              ),
              SizedBox(height: 10,),
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Card(
                    margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: CheckboxListTile(
                      title: Text(
                        'Perte de poids',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Poids_value,
                      onChanged: (val){
                        setState(() {
                          Poids_value=val!;
                        });
                      },
                    ),
                  )
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees4()));

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
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees6()));

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

          ) ,
        ),
    );
  }
}
