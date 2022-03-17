import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Sidebar.dart';
import 'package:e_sante/Toxicite_digestive/Digestive_survey.dart';

class Toxicity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                padding:  EdgeInsets.fromLTRB(30, 0, 0, 10),
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 40, 60, 0),
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
            padding:  EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Text(
              'Vous serez redirigé vers une liste de questions en fonction de votre sélection.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],

              ),
            ),
          ),
          SizedBox(height: 13,),
          Padding(
            padding:  EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Card(
                    color: Colors.grey[300],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(20, 16, 20, 15),
                          child: Image.asset('assets/Gastroenterology.png'),
                        ),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(35, 0, 35,0),
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
                                        },
                                        child: Text("Passer l'evaluation"),
                                      ),
                                      SizedBox(width: 50,),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Digestive_survey()));
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
                        padding:  EdgeInsets.fromLTRB(17, 20, 17, 20),
                        child: Image.asset('assets/Frame.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(1, 0, 1, 0),
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                              title: Text('Attention'),
                              content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                              actions: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Passer l'evaluation"),
                                    ),
                                    SizedBox(width: 50,),
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
                              ' Arthromyalgique',
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
          ),
          Row(

            children: [
              Padding(
                padding:  EdgeInsets.fromLTRB(28, 0, 0, 0),
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20, 17, 20, 17),
                        child: Image.asset('assets/Nephrology.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(12, 0, 12,0),
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                              title: Text('Attention'),
                              content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                              actions: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Passer l'evaluation"),
                                    ),
                                    SizedBox(width: 50,),
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
              ),
              SizedBox(width: 15,),
              Padding(
                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20, 17, 20, 17),
                        child: Image.asset('assets/Obstetrics _ Gynecology.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(25, 0, 25,0),
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                              title: Text('Attention'),
                              content: Text("Ne continuez que si vous avez passé évaluation de l'état général"),
                              actions: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Passer l'evaluation"),
                                    ),
                                    SizedBox(width: 50,),
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
              ),
            ],

          ),
          Row(
            children: [
              Padding(
                padding:  EdgeInsets.fromLTRB(30, 0, 0, 20),
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20, 17, 20, 17),
                        child: Image.asset('assets/oculaire.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(35, 0, 35,0),
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                              title: Text('Attention'),
                              content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                              actions: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Passer l'evaluation"),
                                    ),
                                    SizedBox(width: 50,),
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
              ),
              SizedBox(width: 15,),
              Padding(
                padding:  EdgeInsets.fromLTRB(0, 0, 0, 18),
                child: Card(
                  color: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.fromLTRB(20, 17, 20, 17),
                        child: Image.asset('assets/Dermatology.png'),
                      ),
                      Padding(
                        padding:  EdgeInsets.fromLTRB(35, 0, 35,0),
                        child: TextButton(
                          onPressed: () {
                            showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                              title: Text('Attention'),
                              content: Text('Ne continuez que si vous avez passé évaluation de l’état général'),
                              actions: [
                                Row(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Passer l'evaluation"),
                                    ),
                                    SizedBox(width: 50,),
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
              ),
            ],
          )
        ],
      ),


    );

  }
}
