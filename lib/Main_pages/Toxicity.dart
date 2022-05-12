import 'package:e_sante/Toxicite_Gonadique/Gonadique_survey.dart';
import 'package:e_sante/Toxicite_Oculaire/Oculaire_survey.dart';
import 'package:e_sante/Toxicite_arthromyalgique/Arthromyalgique_survey.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Sidebar.dart';
import 'package:e_sante/Evaluation.dart';
import 'package:e_sante/Toxicite_digestive/Digestive_survey.dart';
import 'package:e_sante/Toxicite_neurologique/Neurologique_survey.dart';
class Toxicity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
          leading: Builder(builder: (context){
            return IconButton(
              onPressed: () =>Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu,
                color: Colors.red[400],
                size: 40,
              ),
            );
          }),
          backgroundColor: Colors.cyan[900],
          shape: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEF5350),
            ),
          ),
          title: Row(
            children: [
              Padding(
                padding:  EdgeInsets.fromLTRB(30, 3, 0, 10),
                child: Image.asset('assets/Logo circle.png'),
              ),
              SizedBox(width: 20,),
              Text(
                'E-sante',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),

          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications,
                  color: Colors.red[400],
                  size: 40,
                )
            )
          ],
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(90),
              child: Container(
                padding:  EdgeInsets.symmetric(horizontal: 55,vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                height: 57,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                        color: Colors.black,
                      ),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 3),
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.grey[400]
                  ),

                ),
              )

          )
      ),
      body: SingleChildScrollView(
        child: Container(
          width: WidthScreen,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: HeightScreen/20,left: WidthScreen/90,right:WidthScreen/10 ),
                    child: Text(
                        'Choisissez votre toxicité',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        )

                    ),
                  ),
                  SizedBox(height: 6,),
                  Padding(
                    padding:  EdgeInsets.only(top: HeightScreen/125,left: WidthScreen/20),
                    child: Text(
                      'Vous serez redirigé vers une liste de questions en fonction de votre sélection.',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],

                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                            color: Colors.grey[300],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: WidthScreen/90,top: HeightScreen/30,right: WidthScreen/90,bottom: HeightScreen/30),
                                  child: Image.asset('assets/Gastroenterology.png'),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(left: WidthScreen/15,right: WidthScreen/15),
                                  child: TextButton(
                                    onPressed: () {
                                      showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                        title: Text('Attention'),
                                        content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                                        actions: [
                                          Row(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));

                                                },
                                                child: Text(
                                                  "Passer l'evaluation",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              SizedBox(width: 20,),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Digestive_survey()));
                                                },
                                                child: Text("Continuer"),
                                              ),
                                            ],
                                            mainAxisAlignment: MainAxisAlignment.center,
                                          )

                                        ],

                                      ),
                                        barrierDismissible: true,
                                      );
                                    },
                                    child: Text(
                                        'Digestive',
                                        style: TextStyle(
                                          fontSize: 20,
                                        )
                                    ),

                                  ),
                                )

                              ],
                            ),
                          ),

                        SizedBox(width: 7,),
                        Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(top: HeightScreen/20,bottom: HeightScreen/30),
                                child: Image.asset('assets/Frame.png'),
                              ),
                              TextButton(
                                  onPressed: () {
                                    showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                      title: Text('Attention'),
                                      content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                                      actions: [
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                              },
                                              child: Text("Passer l'evaluation"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Arthromyalgique_survey()));
                                              },
                                              child: Text("Continuer"),
                                            )
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.center,
                                        )

                                      ],

                                    ),
                                      barrierDismissible: true,
                                    );
                                  },
                                  child: Text(
                                      ' Arthromyalgique',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )
                                  ),

                                ),

                            ],
                          ),
                        ),



                      ],
                    ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/25,right: WidthScreen/20,bottom: HeightScreen/50),
                                child: Image.asset('assets/Nephrology.png'),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/40,right: WidthScreen/40),
                                child: TextButton(
                                  onPressed: () {
                                    showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                      title: Text('Attention'),
                                      content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                                      actions: [
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                              },
                                              child: Text("Passer l'evaluation"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Neurologique_survey()));
                                              },
                                              child: Text("Continuer"),
                                            )
                                          ],
                                          mainAxisAlignment: MainAxisAlignment.center,
                                        )

                                      ],

                                    ),
                                      barrierDismissible: true,
                                    );
                                  },
                                  child: Text(
                                      ' Neurologique',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )
                                  ),

                                ),
                              )

                            ],
                          ),
                        ),

                      SizedBox(width: 10,),
                      Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/25,right: WidthScreen/20,bottom: HeightScreen/50),
                                child: Image.asset('assets/Obstetrics _ Gynecology.png'),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/25,right: WidthScreen/25),
                                child: TextButton(
                                  onPressed: () {
                                    showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                      title: Text('Attention'),
                                      content: Text("Ne continuez que si vous avez passé évaluation de l'état général"),
                                      actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                              },
                                              child: Text("Passer l'evaluation"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Gonadique_survey()));
                                              },
                                              child: Text("Continuer"),
                                            )
                                          ],
                                        )

                                      ],

                                    ),
                                      barrierDismissible: true,
                                    );
                                  },
                                  child: Text(
                                      ' Gonadique',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )
                                  ),

                                ),
                              )

                            ],
                          ),
                        ),

                    ],

                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/25,right: WidthScreen/20,bottom: HeightScreen/50),
                                child: Image.asset('assets/oculaire.png'),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/13,right: WidthScreen/13),
                                child: TextButton(
                                  onPressed: () {
                                    showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                      title: Text('Attention'),
                                      content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                                      actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                              },
                                              child: Text("Passer l'evaluation"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Oculaire_survey()));
                                              },
                                              child: Text("Continuer"),
                                            )
                                          ],
                                        )

                                      ],

                                    ),
                                      barrierDismissible: true,
                                    );
                                  },
                                  child: Text(
                                      ' Oculaire',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )
                                  ),

                                ),
                              )

                            ],
                          ),
                        ),

                      SizedBox(width: 15,),
                      Card(
                          color: Colors.grey[300],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/25,right: WidthScreen/20,bottom: HeightScreen/50),
                                child: Image.asset('assets/Dermatology.png'),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left: WidthScreen/15,right: WidthScreen/15),
                                child: TextButton(
                                  onPressed: () {
                                    showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                      title: Text('Attention'),
                                      content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                                      actions: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                              },
                                              child: Text("Passer l'evaluation"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Text("Continuer"),
                                            )
                                          ],
                                        )

                                      ],

                                    ),
                                      barrierDismissible: true,
                                    );
                                  },
                                  child: Text(
                                      'Cutanée',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )

                                  ),

                                ),
                              )

                            ],
                          ),
                        ),


                    ],
                  ),
                  SizedBox(height: 20,),
                ],
              ),

            ),
      ),




    );

  }
}
