import 'dart:convert';
import 'dart:io';
import 'package:e_sante/Data/controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:e_sante/Data/User.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  File ?_image;
  final imagePicker = ImagePicker();
  Future getImage() async{
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(()=>_controller.isLoading.value? Center(child: const CircularProgressIndicator()):
         SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: WidthScreen,
                height: HeightScreen/2.8,
                color: Colors.blue[800],
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: WidthScreen/1.4),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
                        },
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: HeightScreen/40),
                        child: Stack(children: <Widget>[
                           CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                'assets/User.jpg',
                                width: 90,
                                height: 90,
                                fit: BoxFit.cover,
                              ),
                            ),
                            radius: 50,
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 0,
                            child: IconButton(
                              onPressed: getImage,
                              icon: Icon(
                                Icons.camera_alt,
                                size: 28.0,
                                color: Colors.black,
                              ),

                            ),

                          ),
                        ]),
                      ),
                    ),

                    SizedBox(height: 10,),
                    Text(
                      "${_controller.patientList[0].Nom}",
                      style: TextStyle(
                        fontSize: 22,

                      ),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      'ahmedennaime20@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),

                    )
                  ],
                ),
              ),

                 Container(
                  color: Colors.grey[300],
                  width: WidthScreen,

                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: WidthScreen/22,right: WidthScreen/22,top: HeightScreen/45),
                        child: Card(
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
                                    children: [
                                      Text(
                                        'Nom et Prenom',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Ahmed Ennaime',
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
                                    children: [
                                      Text(
                                        'Email                              ',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'ahmedennaime20@gmail.com',
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
                                    children: [
                                      Text(
                                        'Age',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        '25',
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
                                    children: [
                                      Text(
                                        'Sexe',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        'Femme',
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
                                    children: [
                                      Text(
                                        'Telephone',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        '0682622717',
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
                                    children: [
                                      Text(
                                        'Se deconnecter',
                                        style: TextStyle(
                                          fontSize: 18,
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
        ),
      ) ,

    );
  }
}
