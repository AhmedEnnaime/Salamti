import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cures extends StatefulWidget {

  @override
  State<Cures> createState() => _CuresState();
}

class _CuresState extends State<Cures> {
  bool visible=false;
  int y=5;
  File ?image;

  void timer(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(y > 0){
        setState(() {
          y--;
          if (y==0){
            Column(
              children: [
                Card(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Insérer votre bilan",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          icon: IconButton(
                            icon:Icon(
                              Icons.camera_alt,
                              size: 18,
                            ),
                            onPressed: () {
                              showDialog(context: context,
                                builder: (context)=>AlertDialog(
                                  actions: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            TextButton(
                                              child: Text(
                                                'Prendre une photo',
                                                style:TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),

                                              onPressed: () {
                                                pickimagecam();
                                              } ,
                                            ),
                                            SizedBox(width: 20,),
                                            Icon(
                                              Icons.camera_alt,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                pickimage();
                                              },
                                              child: Text(
                                                'Telecharger une photo',
                                                style:TextStyle(
                                                  fontSize: 18,
                                                ) ,
                                              ),

                                            ),
                                            SizedBox(width: 20,),
                                            Icon(
                                              Icons.upload_rounded,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],

                                ),
                                barrierDismissible: true,
                              );
                            },

                          ),

                        ),
                      ),
                      image !=null ?Image.file(image!):Text("Aucne image n'a été selectionné")
                    ],
                  ),



                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'Envoyer',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            );
          }
        });

      }else{
        timer.cancel();
      }

    });
  }
  Future pickimage() async{
    try{
      final image = await ImagePicker().getImage(source: ImageSource.gallery);
      if(image==null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    }on PlatformException catch(e){
      print('failed to pick image:$e');

    }

  }
  Future pickimagecam() async{
    try{
      final image = await ImagePicker().getImage(source: ImageSource.camera);
      if(image==null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    }on PlatformException catch(e){
      print('failed to pick image:$e');

    }

  }
  /*Future getBilan() async{
    final preferences = await SharedPreferences.getInstance();
    await preferences.getInt('timer');
  }
  Future setBilan() async{
    final preferences = await SharedPreferences.getInstance();
    await preferences.setInt('timer', y);
  }

@override
void initState() {
    super.initState();
    getBilan();
  }*/

  @override
  Widget build(BuildContext context) {
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Cure',
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
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: HeightScreen/20),
              child: Text(
                'Confirmer si vous avez passer votre cure',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: EdgeInsets.only(top: HeightScreen/15),
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: WidthScreen/30),
                        child: Text(
                          'Oui',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Radio<String>(
                        value: 'Oui',
                        groupValue: cure_val,
                        onChanged: (value){
                          setState(() {
                            cure_val=value!;
                          });

                        },
                      ),

                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Card(
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  margin: EdgeInsets.only(top: HeightScreen/15),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: WidthScreen/30),
                        child: Text(
                          'Non',
                          style: TextStyle(
                            fontSize: 16,
                          ),

                        ),
                      ),
                      Radio<String>(
                        value: 'Non',
                        groupValue: cure_val,
                        onChanged: (value){
                          setState(() {
                            cure_val=value!;
                          });

                        },
                      ),
                    ],
                  ),

                ),
              ],
            ),
            SizedBox(height: 40,),
            ElevatedButton(
                onPressed: (){
                  if(cure_val=='Oui'){
                    timer();
                    /*Future.delayed(Duration(seconds: y),(){
                      setState(() {
                        visible =!visible;
                      });

                    });

                    /*Future.delayed(Duration(seconds: 5),(){
                      showDialog(
                          context: context,
                          builder: (context)=>AlertDialog(
                        content: Text('Entrer votre bilan'),
                            actions: [
                              Column(
                                children: [

                                  Card(
                                    shape: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        hintText: "Insérer votre bilan",
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        icon: IconButton(
                                          icon:Icon(
                                            Icons.camera_alt,
                                            size: 18,
                                          ),
                                          onPressed: () {
                                            ListView(


                                            );
                                          },

                                        )
                                      ),
                                    ),

                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                      onPressed: (){},
                                      child: Text(
                                        'Envoyer',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                  )
                                ],
                              ),
                            ],
                      ),
                        barrierDismissible: true,

                    );
                  });*/
                }else {
                   setState(() {
                     visible = false;
                   });*/

                  }
            },


                child: Text(
                  'Confirmer',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
            ),
            SizedBox(height: 30,),
      Text(
          y.toString(),
        style: TextStyle(
          fontSize: 40,
        ),
      ),

      Visibility(
        visible:visible ,
        child:  Column(
          children: [
            Card(
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Insérer votre bilan",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        icon: IconButton(
                          icon:Icon(
                            Icons.camera_alt,
                            size: 18,
                          ),
                          onPressed: () {
                            showDialog(context: context,
                                builder: (context)=>AlertDialog(
                                  actions: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            TextButton(
                                              child: Text(
                                                'Prendre une photo',
                                                style:TextStyle(
                                                  fontSize: 18,
                                                ),
                                              ),

                                              onPressed: () {
                                                pickimagecam();
                                              } ,
                                            ),
                                            SizedBox(width: 20,),
                                            Icon(
                                                Icons.camera_alt,
                                                size: 30,
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                pickimage();
                                              },
                                              child: Text(
                                                'Telecharger une photo',
                                                style:TextStyle(
                                                  fontSize: 18,
                                                ) ,
                                              ),

                                            ),
                                            SizedBox(width: 20,),
                                            Icon(
                                                Icons.upload_rounded,
                                                size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],

                                ),
                              barrierDismissible: true,
                            );
                          },

                        ),

                    ),
                  ),
      image !=null ?Image.file(image!):Text("Aucne image n'a été selectionné")
                ],
              ),



            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){},
                child: Text(
                  'Envoyer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
            )
          ],
        ),

      )
          ],

        ),
      ),
      

    );
  }
}
