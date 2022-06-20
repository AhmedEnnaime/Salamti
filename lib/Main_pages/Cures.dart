import 'dart:async';
import 'dart:io';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/Data/Patient_Data/patient_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Implement_cures.dart';
import 'package:e_sante/Data/Cures_Data/Cures_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cures extends StatefulWidget {

  @override
  State<Cures> createState() => _CuresState();
}

class _CuresState extends State<Cures> {
  bool visible=false;
  int y=5;
  DateTime ?cure_day;
  DateTime ?next_cure;
  DateTime ?bilan_day;
  DateTime ?temps_restant;
  File ?image;
  String _getMonthDate(int month) {
    if (month == 01) {
      return 'Janvier';
    } else if (month == 02) {
      return 'Février';
    } else if (month == 03) {
      return 'Mars';
    } else if (month == 04) {
      return 'Avril';
    } else if (month == 05) {
      return 'Mai';
    } else if (month == 06) {
      return 'Juin';
    } else if (month == 07) {
      return 'Juillet';
    } else if (month == 08) {
      return 'Aout';
    } else if (month == 09) {
      return 'Septembre';
    } else if (month == 10) {
      return 'Octobre';
    } else if (month == 11) {
      return 'Novembre';
    } else {
      return 'Decembre';
    }
  }
  var curescontroller = Curescontroller(Cures_Data());
  var patientcontroller = Patientcontroller(Patients_data());
  void timer(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(y > 0){
        setState(() {
          y--;
          if (y==0){
            setState(() {
              visible = !visible;
            });
          }
        });

      }else{
        timer.cancel();
      }

    });
  }

  void LoadData()async{
    SharedPreferences prefs= await SharedPreferences.getInstance();
    /*if(mounted){
      setState(() {
        y = prefs.getInt('Timer')!;
      });
    }*/

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
  bool zz(){
    bilan_day = cure_day?.add(Duration(minutes: 1));
    if(bilan_day == DateTime.now().minute){
      return true;
    }else return false;
  }

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
            FutureBuilder<List<Patient>>(
              future:patientcontroller.fetchPatientList() ,
              builder: ( context, snapshot) {
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(child: CircularProgressIndicator(),);
                }
                if (snapshot.hasError){
                  return Center(child: Text('${snapshot.error}'),);
                }
                return Container(
                  width: WidthScreen/2,
                  height: HeightScreen/17,
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        var patient = snapshot.data?[index];
                        return ElevatedButton(
                          onPressed: () async{
                            if(cure_val=='Oui'){
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              prefs.setInt('Timer', y);
                              timer();
                              cure_day = DateTime.now();
                              print(cure_day);
                              next_cure= cure_day?.add(Duration(days: 21));
                              print(next_cure);
                              temps_restant = (next_cure?.subtract(Duration(days: cure_day!.day)));
                              print(temps_restant?.day);
                              Cures_Model cure = Cures_Model(cure_day: '${cure_day?.day.toString()} ${_getMonthDate(cure_day!.month).toString()} ${cure_day?.year.toString()}',Next_cure: '${next_cure?.day.toString()} ${_getMonthDate(next_cure!.month).toString()} ${next_cure?.year.toString()}',Patient_Ip: IP.text,Patient_nom: patient?.Nom);
                              curescontroller.postCures(cure);
                            }else {
                              setState(() {
                                visible = false;
                              });
                            }
                          },


                          child: Text(
                            'Confirmer',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        );

                  }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length ?? 0,),
                );
              },

            ),
            SizedBox(height: 30,),
      Text(
          'Temps restant avant de\n déposer votre bilan :${y.toString()}',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      SizedBox(height: 20,),

      Visibility(
        visible:zz() ,
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
            ),
            SizedBox(height: 20,),
            Text('Votre prochaine cure sera :${next_cure?.day}/${next_cure?.month}/${next_cure?.year}'),
          ],
        ),

      )
          ],

        ),
      ),
      

    );
  }
}
