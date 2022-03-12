import 'package:flutter/material.dart';
import 'package:e_sante/Nausees_survey.dart';
class Digestive_survey extends StatefulWidget {
  @override
  State<Digestive_survey> createState() => _Digestive_surveyState();
}

class _Digestive_surveyState extends State<Digestive_survey> {
  bool Nausees_value=false;
  bool Diarrhees_value=false;
  bool Vommissements_value=false;
  bool Constipation_value=false;
  bool Mucite_value=false;
  bool Douleurs_value=false;
  bool Gouts_value=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
            'Toxicité digestive',
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
                        'Nausées',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Nausees_value,
                      onChanged: (val){
                        setState(() {
                          Nausees_value=val!;
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
                         'Vomissements',
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,

                         ),
                       ),
                       value: Vommissements_value,
                       onChanged: (val){
                         setState(() {
                           Vommissements_value=val!;
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
                        'Diarrhées',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Diarrhees_value,
                      onChanged: (val){
                        setState(() {
                          Diarrhees_value=val!;
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
                        'Constipation',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Constipation_value,
                      onChanged: (val){
                        setState(() {
                          Constipation_value=val!;
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
                        'Mucite',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Mucite_value,
                      onChanged: (val){
                        setState(() {
                          Mucite_value=val!;
                        });
                      },
                    ),
                  )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child:Card(
                    margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child:CheckboxListTile(
                      title: Text(
                        'Douleurs abdominales ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Douleurs_value,
                      onChanged: (val){
                        setState(() {
                          Douleurs_value=val!;
                        });
                      },
                    ) ,
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
                        'Modification des gouts des aliments ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      value: Gouts_value,
                      onChanged: (val){
                        setState(() {
                          Gouts_value=val!;
                        });
                      },
                    ),
                  )
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
                      if(Nausees_value==true || Vommissements_value==true){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Nausees()));
                      }else if (Diarrhees_value==true){

                      }else if(Constipation_value==true){

                      }else if(Mucite_value==true){

                      }
                      
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

            ) ,
          )
    );
  }
}
