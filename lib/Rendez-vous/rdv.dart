import 'dart:ui';
import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Rendez-vous/rdv_confirm.dart';
import '../Data/Rdv_medecin_Data/Implement_Rdv_medecin.dart';
import '../Data/Rdv_medecin_Data/Rdv_medecin_controller.dart';

class rdv extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _rdv();
}

class _rdv extends State<rdv> {

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

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

  Widget initWidget(BuildContext context) {
    var rdv_medecincontroller = Rdv_medecincontroller(Rdv_medecin_Data());
    rdv_medecincontroller.getRdv_medecin();
    /*bool matin1_visibility(){
      if(dateTime== rdv_medecin.Day && medecin_matin1== true){
        return true;
      }else return false;
    }*/

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff053F5E),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xff053F5E),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                              'assets/dr.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                          ),
                        ),
                        radius: 50,
                        backgroundColor: Colors.white,

                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Text('Dr. Fred Mask',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: FutureBuilder<List<Rdv_medecin>>(
                future: rdv_medecincontroller.getRdv_medecin(),
                builder: (context,  snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(child: CircularProgressIndicator(),);
                  }
                  if (snapshot.hasError){
                    return Center(child: Text('${snapshot.error}'),);
                  }
                  return  ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ( context, index) {
                      var rdv_medecin = snapshot.data?[index];
                      return Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: (){
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2022),
                                    lastDate: DateTime(2060),
                                  ).then((date) {
                                    setState(() {
                                      dateTime = date;
                                    });
                                  });


                                },
                                icon: Icon(
                                  Icons.calendar_today_rounded,
                                  size: 40,
                                  color: Colors.blue[800],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                dateTime==null ? "Aucune date n'a ete selectionne":"${dateTime?.day} ${_getMonthDate(dateTime!.month)} ${dateTime?.year}",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }, separatorBuilder: ( context,  index) { return Divider(); }, itemCount: snapshot.data?.length ?? 0,
                  );

                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text('Matin',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  Visibility(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.grey[200],
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('9:00 AM'),
                          Checkbox(
                            value: patient_matin1,
                            onChanged: (val) {
                              setState(() {
                                patient_matin1=val!;
                              });

                            },

                          ),
                        ],
                      ),
                    ),
                   // visible:matin1_visibility() ,
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('9:30 AM'),
                        Checkbox(
                          value: patient_matin2,
                          onChanged: (val) {
                            setState(() {
                              patient_matin2=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('10:00 AM'),
                        Checkbox(
                          value: patient_matin3,
                          onChanged: (val) {
                            setState(() {
                              patient_matin3=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('10:30 AM'),
                        Checkbox(
                          value: patient_matin4,
                          onChanged: (val) {
                            setState(() {
                              patient_matin4=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('11:00 AM'),
                        Checkbox(
                          value: patient_matin5,
                          onChanged: (val) {
                            setState(() {
                              patient_matin5=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('11:30 AM'),
                        Checkbox(
                          value: patient_matin6,
                          onChanged: (val) {
                            setState(() {
                              patient_matin6=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, top: 30),
              child: Text('Aprés-midi',
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.7,
                children: [
                  Visibility(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.grey[200],
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('3:00 PM'),
                          Checkbox(
                            value: patient_midi1,
                            onChanged: (val) {
                              setState(() {
                                patient_midi1=val!;
                              });

                            },

                          ),
                        ],
                      ),
                    ),
                    // visible:matin1_visibility() ,
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('3:30 PM'),
                        Checkbox(
                          value: patient_midi2,
                          onChanged: (val) {
                            setState(() {
                              patient_midi2=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4:00 PM'),
                        Checkbox(
                          value: patient_midi3,
                          onChanged: (val) {
                            setState(() {
                              patient_midi3=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('4:30 PM'),
                        Checkbox(
                          value: patient_midi4,
                          onChanged: (val) {
                            setState(() {
                              patient_midi4=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5:00 PM'),
                        Checkbox(
                          value: patient_midi5,
                          onChanged: (val) {
                            setState(() {
                              patient_midi5=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[200],
                    shape: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5:30 PM'),
                        Checkbox(
                          value: patient_midi6,
                          onChanged: (val) {
                            setState(() {
                              patient_midi6=val!;
                            });

                          },

                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 54,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff107163),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x17000000),
                    offset: Offset(0, 15),
                    blurRadius: 15,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>rdv_confirm()));
                },
                child: Text(
                    'Prendre rendez-vous',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget demoDates(String day, String date, bool isSelected) {
    return isSelected ? Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    ) : Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget doctorTimingsData(String time, bool isSelected) {
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Color(0xff107163),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text('08:30 AM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    ) : Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Color(0xffEEEEEE),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.black,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 2),
            child: Text('08:30 AM',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}