import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:e_sante/Doctor/Pages/Acceuil_medecin.dart';
import 'package:http/http.dart' as http;


class Login_medecin extends StatefulWidget {
  @override
  _Login_medecinState createState() => _Login_medecinState();
}

class _Login_medecinState extends State<Login_medecin> {
  TextEditingController tel = TextEditingController();
  TextEditingController Mdp = TextEditingController();
  final _formkey = GlobalKey <FormState> ();
  @override
  Widget build(BuildContext context) {
    double widthScreen=MediaQuery.of(context).size.width;
    double heightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              width: widthScreen,
              height: heightScreen/0.7,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: widthScreen/20, top: heightScreen/6),
              child: Text(
                'Bienvenue',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            Container(
              height: heightScreen/1,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        key:_formkey,
                        child: Container(
                          margin: EdgeInsets.only(left: widthScreen/15.5, right: widthScreen/15.5),
                          child: Column(
                            children: [
                              TextFormField(
                                controller:tel,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Numero de telephone",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value){
                                  if(value!.isEmpty || value == null || value.length <10){
                                    return 'Entrez votre numero de telephone';
                                  }else{
                                    return null;
                                  }
                                },

                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                controller:Mdp,
                                keyboardType: TextInputType.text,
                                style: TextStyle(),
                                obscureText: true,
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Mot de passe",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value){
                                  if(value == null || value.isEmpty){
                                    return 'Entrez mot de passe';
                                  }else if(value.length < 7){
                                    return'Mot de passe est court';
                                  }else{
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: widthScreen/1.3,
                                height: heightScreen/12,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "S'identifier",
                                      style: TextStyle(
                                          fontSize: 27, fontWeight: FontWeight.w700),
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Color(0xff4c505b),
                                      child: IconButton(
                                          color: Colors.white,
                                          onPressed: () {
                                            if(_formkey.currentState!.validate()){
                                              RegistrationUser();
                                              print('Success');
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil_medecin()));
                                            }else{
                                              print('Unsuccess');
                                            }
                                          },
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),

                              Container(
                                height: heightScreen/10,
                                width: widthScreen/0.4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Mot de passe\noublie?',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff4c505b),
                                          fontSize: 18,
                                        ),
                                      ),
                                      style: ButtonStyle(),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Mode spectateur',
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff4c505b),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  }
  Future RegistrationUser() async {
    var APIURL = "http://10.0.2.2:3000/patients";
    Map mapeddata = {
      "Num" : tel.text,
      "Mot de passe": Mdp.text,
    };
    http.Response reponse = await http.post(APIURL,body: mapeddata);
    var data = jsonDecode(reponse.body);
    print('DATA: ${data}');

  }
}

