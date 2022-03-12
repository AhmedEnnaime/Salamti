import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Evaluation.dart';

class Registration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Registration> {
  final _formkey = GlobalKey <FormState> ();

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


                ),
              ),
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.teal,
                    size: 28.0,
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
}
