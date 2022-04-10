import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Sidebar.dart';
import 'package:e_sante/Evaluation.dart';
import 'package:http/http.dart' as http;
import 'package:e_sante/Data/User.dart';

class Acceuil extends StatefulWidget {

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
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
                padding:  EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
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
              preferredSize: Size.fromHeight(HeightScreen/14),
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
                height: HeightScreen/5.3,
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
                              'Cessez de\nfumer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),

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
                              'Evitez le\nsurpoids',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
                              'Evitez de\nl alcol',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
                              'Consommez les\nfruits et legumes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
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
                              'Soyez active\nau quotidien',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),

                          ],
                        )

                      ],

                    ),

                    SizedBox(width: 20,),

                  ],
                ),
              ),
              SizedBox(height: 20,),

              Container(
                  width: WidthScreen/1.1,
                  height: HeightScreen/4,
                  child: Card(
                    margin: EdgeInsets.only(left: WidthScreen/30,right: WidthScreen/60),

                    color: Colors.cyan[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding:  EdgeInsets.only(left: WidthScreen/70,top: HeightScreen/60),
                            child: Image.asset(
                              'assets/nurse.png',
                              width: 100,
                              height: 100,
                            ),
                          ),
                        Padding(
                            padding:  EdgeInsets.only(top: HeightScreen/20,left: WidthScreen/20),
                            child: Column(
                              children: [
                                Text(
                                  'N oubliez pas de passer \nl evaluation general le\ndebut de chaque mois',
                                  textAlign: TextAlign.center,
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

                      ],
                    )
                  ),
                ),

              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(left: WidthScreen/90,right:WidthScreen/4 ),
                child: Text(
                  'Prochain rendez-vous',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
                  Container(
                    width: WidthScreen/1.2,
                    height: HeightScreen/2.5,
                    child: Card(
                      color: Colors.cyan[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: HeightScreen/30,left: WidthScreen/90,right: WidthScreen/3),
                            child: Text(
                              'Temps restant : 3 jours ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: HeightScreen/30),
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
                                padding:  EdgeInsets.only(left: WidthScreen/20,top: HeightScreen/30,bottom: HeightScreen/40),
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
                                padding:  EdgeInsets.only(left: WidthScreen/30,bottom: HeightScreen/50),
                                child: Icon(
                                  Icons.local_hospital,
                                  size: 30,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding:  EdgeInsets.only(bottom: 14),
                                child: Text(
                                  'Hopital \nMarrakech',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(width: 30,),
                              Padding(
                                padding:  EdgeInsets.only(bottom: HeightScreen/40,left: WidthScreen/10),
                                child: Icon(
                                  Icons.phone,
                                  size: 25,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: EdgeInsets.only(bottom: HeightScreen/40),
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
                  ),



            ],
          ),

        ),
      ),

    );
  }
}
