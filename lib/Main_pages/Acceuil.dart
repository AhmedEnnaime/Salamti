import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Sidebar.dart';
import 'package:e_sante/Evaluation.dart';

class Acceuil extends StatefulWidget {

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
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
                padding:  EdgeInsets.fromLTRB(60, 20, 50, 0),
                child: Text(
                  'Bonjour Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
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
              preferredSize: Size.fromHeight(60),
              child: Container(

              )

          )
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(0, 20, 130, 0),
                child: Text(
                    'Conseils generaux',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                                'assets/cigarette.png',
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),

                          ),
                          radius: 40,
                          backgroundColor: Colors.pink[50],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(
                              'Cessez de',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'fumer',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )

                      ],

                    ),
                    SizedBox(width: 20,),
                    Column(
                      children: [
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                                'assets/surpoids.png',
                              fit: BoxFit.cover,

                            ),

                          ),
                          radius: 40,
                          backgroundColor: Colors.pink[50],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(
                              'Evitez le',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'surpoids',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )

                      ],

                    ),

                    SizedBox(width: 20,),
                    Column(
                      children: [
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                              'assets/alcol.png',
                              fit: BoxFit.cover,
                            ),

                          ),
                          radius: 40,
                          backgroundColor: Colors.pink[50],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(
                              'Evitez de',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'l alcol',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )

                      ],

                    ),

                    SizedBox(width: 20,),
                    Column(
                      children: [
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                                'assets/food.png',
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                            ),

                          ),
                          radius: 40,
                          backgroundColor: Colors.pink[50],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(
                              'Consommez les',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'fruits et legumes',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )

                      ],

                    ),

                    SizedBox(width: 20,),
                    Column(
                      children: [
                        CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                                'assets/active.png',
                              fit: BoxFit.cover,
                            ),

                          ),
                          radius: 40,
                          backgroundColor: Colors.pink[50],
                        ),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Text(
                              'Soyez active',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'au quotidien',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )

                      ],

                    ),

                    SizedBox(width: 20,),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                child: Card(

                  color: Colors.cyan[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Image.asset(
                            'assets/nurse.png',
                            width: 120,
                            height: 120,

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                        child: Padding(
                          padding:  EdgeInsets.fromLTRB(70, 10, 20, 0),
                          child: Column(
                            children: [
                              Text(
                                'N oubliez pas de passer ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'l evaluation general le  ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'debut de chaque mois ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15,),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green[400],
                                ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                        'Passer',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(right: 120),
                child: Text(
                  'Prochain rendez-vous',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                child: Card(
                  color: Colors.cyan[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10,right: 170),
                        child: Text(
                          'Temps restant : 3 jours ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Consultation avec Dr Fred',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.red[400]
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 30,top: 20,bottom: 15),
                            child: Icon(
                              Icons.calendar_today_rounded,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            '10 Septembre',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: 50,),
                          Icon(
                            Icons.schedule,
                            size: 25,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            '3:00 PM',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 30,bottom: 15),
                            child: Icon(
                              Icons.local_hospital,
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 14),
                            child: Text(
                              'Hopital Marrakech',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Padding(
                            padding:  EdgeInsets.only(bottom: 15),
                            child: Icon(
                              Icons.phone,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Padding(
                            padding: EdgeInsets.only(bottom: 14),
                            child: Text(
                              '0682622717',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),

                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[400]
                        ),
                          onPressed: () {},
                          child: Text(
                            'Annulez rendez-vous',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          )
                      )
                    ],
                  ),
                ),
              )

            ],
          ),

        ),
      ),

    );
  }
}
