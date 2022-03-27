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
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: [
              Container(
                width: WidthScreen,
                height: HeightScreen/3.8,
                color: Colors.cyan[900],
                child: Center(
                  child: Text(
                    'Nausees/Vomissements',
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
                      padding:  EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/40,right: WidthScreen/40),
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
                        padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
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
                        padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
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
                        padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
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
                        padding: EdgeInsets.only(left: WidthScreen/40,top: HeightScreen/250,right: WidthScreen/40),
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
                    SizedBox(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.cyan[900],
                                minimumSize: Size(40, 40),
                                padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
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
                                padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
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

                  ],

                ),
              ),
            ],
          ) ,
        ),
    );
  }
}
