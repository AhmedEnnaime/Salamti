import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:e_sante/Doctor/Pages/Acceuil_medecin.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_controller.dart';
import 'package:e_sante/Data/Doctor_Data/Implement_Doctor.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';


class Profile_medecin extends StatefulWidget {

  @override
  State<Profile_medecin> createState() => _Profile_medecinState();
}

class _Profile_medecinState extends State<Profile_medecin> {
  File ?dr_image;
  Future pickimage() async{
    try{
      final image = await ImagePicker().getImage(source: ImageSource.gallery);
      if(image==null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.dr_image = imageTemp;
      });
    }on PlatformException catch(e){
      print('failed to pick image:$e');

    }
}

  @override
  Widget build(BuildContext context) {
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    var doctorcontroller = Doctorcontroller(Doctor_Data());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: FutureBuilder<List<Doctor>>(
        future: doctorcontroller.getDoctor(),
        builder: ( context,  snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if (snapshot.hasError){
            return Center(child: Text('${snapshot.error}'),);
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                var doctor = snapshot.data?[index];
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: WidthScreen,
                        height: HeightScreen/3.8,
                        color: Colors.blue[800],
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: HeightScreen/50),
                                child: Stack(children: <Widget>[
                                  CircleAvatar(
                                    backgroundImage: dr_image==null ?null:FileImage(dr_image!),
                                    radius: 50,
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    right: 0,
                                    child: IconButton(
                                      onPressed: pickimage,
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
                              "Dr.${doctor?.Nom}",
                              style: TextStyle(
                                fontSize: 22,

                              ),
                            ),
                            SizedBox(height: 4,),
                            Text(
                              '${doctor?.Mail}',
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
                                              '${doctor?.Nom}',
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
                                              '${doctor?.Mail}',
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment:CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Age',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${doctor?.Age}',
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
                                              '${doctor?.Sexe}',
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Telephone',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(
                                              '${doctor?.Tel}',
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                );
              }, separatorBuilder: (BuildContext context, int index) { return Divider(); }, itemCount: snapshot.data?.length ?? 0,
              );

        },
      ) ,

    );
  }
}
