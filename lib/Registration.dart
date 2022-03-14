import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Evaluation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Registration> {
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
  TextEditingController _num = TextEditingController();
  TextEditingController _sexe = TextEditingController();
  final _formkey = GlobalKey <FormState> ();
   File ?_image;
  final imagePicker = ImagePicker();
  Future getImage() async{
    final image = await imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250,
                  color: Colors.cyan[900] ,

                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Image.asset(
                              "assets/Logo circle.png",
                              height: 90,
                              width: 90,
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(right: 20, top: 10),
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Remplissez vos informations ",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],

                      )
                  ),
                ),
          Center(
            child: Stack(children: <Widget>[
              Padding(
                padding:  EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 70.0,
                  //child: Image.file(_image),

                ),
              ),
              Positioned(
                bottom: 7.0,
                right: 7.0,
                  child: IconButton(
                    onPressed: getImage,
                    icon: Icon(
                        Icons.camera_alt,
                        size: 28.0,
                        color: Colors.teal,
                    ),

                  ),

              ),
            ]),
          ),

                Form(
                  key: _formkey,
                  child:Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _name,
                          keyboardType: TextInputType.text,
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.red[400],
                            ),
                            hintText: "Nom et prenom",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value!.isNotEmpty) {
                              return null;
                            }else {
                              return 'Entrez votre nom et prenom';
                            }
                          } ,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _age,
                          keyboardType: TextInputType.number,
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.support_agent_sharp,
                              color: Colors.red[400],
                            ),
                            hintText: "Age",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value){
                            if( value!.isEmpty){
                              return 'Entrez votre age';
                            }else if (int.tryParse(value)!.isNegative){
                              return 'Age doit etre positive';
                            }else {
                              return null;
                            }
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffEEEEEE),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 100,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _num,
                          keyboardType: TextInputType.phone,
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            focusColor: Color(0xffF5591F),
                            icon: Icon(
                              Icons.phone,
                              color: Colors.red[400],
                            ),
                            hintText: "Numéro de téléphone ",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value){
                            if(value!.isNotEmpty && value.length > 9){
                              return null;
                            }else {
                              return 'Entrez votre numero de telephone';
                            }
                          },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: EdgeInsets.only(left: 20, right: 20),
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffEEEEEE),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 100,
                                color: Color(0xffEEEEEE)
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: _sexe,
                          keyboardType: TextInputType.text,
                          cursorColor: Color(0xffF5591F),
                          decoration: InputDecoration(
                            focusColor: Color(0xffF5591F),
                            icon: Icon(
                              Icons.vpn_key,
                              color: Colors.red[400],
                            ),
                            hintText: "Sexe",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          validator: (value){
                            if (value!= 'homme' && value!='femme'){
                              return 'Entrez votre sexe';
                            }else{
                              return null;
                            }
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Write Click Listener Code Here.
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.cyan[900],
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Color(0xffEEEEEE)
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (_formkey.currentState!.validate()){
                                RegistrationUser();
                                print('Success');
                                showCupertinoDialog(context: context, builder:  (_) =>AlertDialog(
                                  content: Text(
                                      'Vous allez repondre sur quelques questions pour savoir votre etat general',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  actions: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:EdgeInsets.only(left: 20),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushNamed(context, 'home');

                                            },
                                            child: Text("Ignorer"),
                                          ),
                                        ),
                                        SizedBox(width: 90,),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation()));
                                          },
                                          child: Text("Continuer"),
                                        )
                                      ],
                                    )

                                  ],

                                ),
                                  barrierDismissible: true,
                                );
                              }else{
                                print('Unsuccess');
                              }
                            },
                            child: Text(
                              "Confirmer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),

                          ),
                        ),
                      ),




                    ],
                  ) ,



                ),

              ],
            )
        )
    );
  }

  Future RegistrationUser() async {
    var APIURL = "http://127.0.0.1:3000/patients";
    Map mapeddata = {
      "name" : _name.text,
      "age": _age.text,
      "num": _num.text,
      "sexe" : _sexe.text

    };
      http.Response reponse = await http.post(APIURL,body: mapeddata);
      var data = jsonDecode(reponse.body);
      print('DATA: ${data}');

  }
}
