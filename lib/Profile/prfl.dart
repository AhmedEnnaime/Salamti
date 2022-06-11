import 'package:e_sante/Data/Patient_Data/patient_controller.dart';
import 'package:e_sante/Main_pages/Roles.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/Data/Patient_Data/Patient.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:io';
import 'package:e_sante/Main_pages/Acceuil.dart';

import '../Login/login.dart';

class prfl extends StatefulWidget {

  @override
  State<prfl> createState() => _prflState();
}

class _prflState extends State<prfl> {
  File ?image;
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
  @override
  Widget build(BuildContext context) {
    TextEditingController new_Nom= TextEditingController();
    TextEditingController new_Mail= TextEditingController();
    TextEditingController new_Age= TextEditingController();
    TextEditingController new_Password= TextEditingController();
    TextEditingController new_Tel= TextEditingController();
    var patientcontroller= Patientcontroller(Patients_data());
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        elevation: 0,
      ),
      body: FutureBuilder<List<Patient>>(
        future: patientcontroller.fetchPatientList() ,
          builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if (snapshot.hasError){
            return Center(child: Text('${snapshot.error}'),);
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                var patient = snapshot.data?[index];
                return Container(
                  child: Column(
                    children: [
                      Container(
                        width: WidthScreen,
                        height: HeightScreen/3.8,
                        color: Colors.pinkAccent[100],
                          child: Column(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: HeightScreen/40),
                                  child: Stack(children: <Widget>[
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: image==null ?null:FileImage(image!) ,
                                    ),
                                    Positioned(
                                      bottom: 0.0,
                                      right: 0,
                                      child: IconButton(
                                        onPressed: pickimage,
                                        icon: Icon(
                                          Icons.camera_alt,
                                          size: 30.0,
                                          color: Colors.black,
                                        ),

                                      ),

                                    ),
                                  ]),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                '${patient?.Nom}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                '${patient?.Mail}',
                                style: TextStyle(
                                  color: Colors.white,
                                ),

                              ),

                            ],
                          ),

                      ),
                      Container(
                        color: Colors.white,
                        width: WidthScreen,
                        height: HeightScreen/1,

                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: WidthScreen/22,right: WidthScreen/22,top: HeightScreen/45),
                              child: Card(
                                color: Colors.pink[50],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.purple,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.supervised_user_circle_outlined,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                'Nom et Prenom',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                ),


                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Nom}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.blueAccent,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.mail,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Email                              ',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Mail}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),


                                  ],
                                ),

                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: WidthScreen/22,right: WidthScreen/22,top: HeightScreen/45),
                              child: Card(
                                color: Colors.pink[50],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.lightBlue,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.person,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Age',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Age}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 150,),

                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.orange,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.transgender_rounded,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Sexe',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Sexe}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.pink,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.phone,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Telephone',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Tel}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.yellow,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.password,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mot de passe',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${patient?.Password}',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 70,),
                                      ],
                                    ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.greenAccent,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.language,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Langue',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              'Francais',
                                              style: TextStyle(
                                                  color: Colors.grey

                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                  ],
                                ),

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: WidthScreen/22,right: WidthScreen/22,top: HeightScreen/45),
                              child: Card(
                                color: Colors.pink[50],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),

                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.only(left: 20,top: 10,bottom: 10),
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(15),

                                            ),
                                            color: Colors.redAccent,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.logout,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Roles()));
                                              },
                                              child: Text(
                                                'Se deconnecter',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black
                                                ),
                                              ),

                                            ),

                                          ],
                                        ),

                                      ],
                                    ),
                                  ],
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                );
              },
              separatorBuilder: (context,index){
                return Divider(
                  //thickness:0.5 ,
                  //height: 0.5,
                );
              },
              itemCount: snapshot.data?.length ?? 0,
          );


      })
    );
  }
}
