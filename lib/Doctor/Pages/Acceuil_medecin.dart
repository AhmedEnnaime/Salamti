import 'package:flutter/material.dart';
import 'package:e_sante/Doctor/Pages/Sidebar_medecin.dart';

 class Acceuil_medecin extends StatefulWidget {

   @override
   State<Acceuil_medecin> createState() => _Acceuil_medecinState();
 }

 class _Acceuil_medecinState extends State<Acceuil_medecin> {

   @override
   Widget build(BuildContext context) {
     final WidthScreen=MediaQuery.of(context).size.width;
     final HeightScreen=MediaQuery.of(context).size.height;
     return Scaffold(
         drawer: Sidebar(),
       appBar:AppBar(
         backgroundColor: Colors.blue[800],
         leading: Builder(builder: (context){
           return IconButton(
             onPressed: () =>Scaffold.of(context).openDrawer(),
             icon: Icon(Icons.menu,
               color: Colors.red[400],
               size: 40,
             ),
           );
         }
         ),
         flexibleSpace:
         Padding(
           padding:  EdgeInsets.only(top: 100),
           child: Column(
             children: [
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Icon(
                       Icons.phone,
                       size: 20,
                       color: Colors.black,
                     ),
                     SizedBox(width: 20,),
                     Text(
                       "Rendez-vous d'aujourd'hui",
                       style: TextStyle(
                         color: Colors.black,

                       ),
                     ),


                   ],
                 ),
               Card(
                 margin: EdgeInsets.fromLTRB(20, 30, 30, 0),
                 clipBehavior: Clip.antiAlias,
                 shape: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white,),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.fromLTRB(30, 14, 0, 14),
                       child: CircleAvatar(

                       ),
                     ),
                     SizedBox(width: 30,),
                     TextButton(
                       onPressed: (){},
                       child: Text(
                         'Mme.Santoshi',
                         style: TextStyle(
                           color: Colors.red[300],
                           fontSize: 16,
                         ),
                       ),

                     ),
                     SizedBox(width: 100,),
                     Icon(
                       Icons.chat,
                       size: 30,
                     )
                   ],
                 ),

               ),
               Card(
                 margin: EdgeInsets.fromLTRB(20, 30, 30, 0),
                 clipBehavior: Clip.antiAlias,
                 shape: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white,),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.fromLTRB(30, 14, 0, 14),
                       child: CircleAvatar(

                       ),
                     ),
                     SizedBox(width: 30,),
                     TextButton(
                       onPressed: (){},
                       child: Text(
                         'Mme.Santoshi',
                         style: TextStyle(
                           color: Colors.red[300],
                           fontSize: 16,
                         ),
                       ),
                       ),

                     SizedBox(width: 100,),
                     Icon(
                       Icons.chat,
                       size: 30,
                     )
                   ],
                 ),

               ),






             ],
           ),
         ),


         bottom: PreferredSize(
           preferredSize: Size.fromHeight(HeightScreen/2.5),
           child: Container(),
         ),

       ),
       body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
         return Container(
           width: WidthScreen,
           height: HeightScreen/2,
           child: Column(
             children: [
               Card(
                 margin: EdgeInsets.fromLTRB(30, 30,40, 0),
                 clipBehavior: Clip.antiAlias,
                 shape: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.red,),
                    borderRadius: BorderRadius.circular(12),
                 ),
                 color: Colors.red[300],
                 child: Row(
                   children: [
                     Padding(
                       padding:  EdgeInsets.fromLTRB(30, 10, 0, 10),
                       child: Icon(
                           Icons.supervised_user_circle_outlined,
                          size: 40,
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(width: 30,),
                     TextButton(
                       onPressed: (){},
                       child: Text(
                         'Mes Patients',
                         style: TextStyle(
                           fontSize: 18,
                           color: Colors.white,
                         ),

                       ),

                     )
                   ],
                 ),

               ),

               Card(
                 margin: EdgeInsets.fromLTRB(30, 30, 40, 0),
                 clipBehavior: Clip.antiAlias,
                 shape: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.red,),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 color: Colors.red[300],
                 child: Row(
                   children: [
                     Padding(
                       padding:  EdgeInsets.fromLTRB(30, 10, 0, 10),
                       child: Icon(
                         Icons.list,
                         size: 40,
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(width: 30,),
                     TextButton(
                       onPressed: (){},
                       child: Text(
                           'Liste des rendez-vous',
                         style: TextStyle(
                           fontSize: 18,
                           color: Colors.white,
                         ),
                       ),

                     ),
                   ],
                 ),

               ),

              Row(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(30, 35, 0, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.red[300],
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(2, 15, 3, 0),
                          child: Icon(
                            Icons.person_add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                       SizedBox(height: 5,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(27, 0, 27, 10),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                              '   Ajouter\n un patient',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),

                            ),

                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(width: 15,),
                  Card(
                    margin: EdgeInsets.fromLTRB(30, 35, 0, 0),
                    clipBehavior: Clip.antiAlias,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red,),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.red[300],
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(7, 10, 7, 0),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 17, 10),
                          child: TextButton(
                            onPressed: (){},
                            child: Text(
                                '     Ajouter\nRendez-vous',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),

                          ),
                        ),
                      ],
                    ),

                  ),

                ],
              )
             ],
           ),

         );

       },
       ),





     );

   }
 }
