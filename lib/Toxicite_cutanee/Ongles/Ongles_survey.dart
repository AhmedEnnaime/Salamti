import 'package:e_sante/Toxicite_cutanee/Ongles/Ongles_advices.dart';
import 'package:e_sante/Toxicite_cutanee/Ongles/Ongles_hopital.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';

class Ongles_survey extends StatefulWidget {

  @override
  State<Ongles_survey> createState() => _Ongles_surveyState();
}

class _Ongles_surveyState extends State<Ongles_survey> {
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
              color: Colors.pinkAccent[100],
              child: Center(
                child: Text(
                  'Ongles',
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
                    padding: EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/30),
                    child: Text(
                      'Cohez les signes que vous avez :',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
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
                        title: TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context)=>AlertDialog(

                                content: Image.asset(
                                  'assets/purulente.png',
                                  fit: BoxFit.cover,

                                ),
                              ),
                              barrierDismissible: true,
                            );
                          },
                          child: Text(
                            'Collection purulente',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black

                            ),
                          ),

                        ),
                        value: Purulente,
                        onChanged: (val){
                          setState(() {
                            Purulente=val!;
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
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/infla.png',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Inflammatoire',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Infla,
                          onChanged: (val){
                            setState(() {
                              Infla=val!;
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
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/chaude.png',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Chaude',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Chaude,
                          onChanged: (val){
                            setState(() {
                              Chaude=val!;
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
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/douloureuse.png',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Douloureuse',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Doul,
                          onChanged: (val){
                            setState(() {
                              Doul=val!;
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
                          title: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context)=>AlertDialog(

                                  content: Image.asset(
                                    'assets/rouge.png',
                                    fit: BoxFit.cover,

                                  ),
                                ),
                                barrierDismissible: true,
                              );
                            },
                            child: Text(
                              'Rouge',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Rouge,
                          onChanged: (val){
                            setState(() {
                              Rouge=val!;
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
                          title: TextButton(
                            onPressed: () {

                            },
                            child: Text(
                              'Aucun',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black

                              ),
                            ),

                          ),
                          value: Aucun_ongles,
                          onChanged: (val){
                            setState(() {
                              Aucun_ongles=val!;
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
                            primary: Colors.pinkAccent[100],
                            minimumSize: Size(40, 40),
                            padding: EdgeInsets.symmetric(horizontal: WidthScreen/20, vertical: HeightScreen/50)
                        ),
                        onPressed: () {
                          if(Ongles_grade() == 'Hopital'){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Ongles_hopital()));
                          }else
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Ongles_advices()));

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
