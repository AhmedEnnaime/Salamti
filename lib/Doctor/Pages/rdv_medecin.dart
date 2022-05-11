import 'dart:ui';
import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_controller.dart';
import 'package:e_sante/Data/Doctor_Data/Implement_Doctor.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Implement_Rdv_medecin.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_controller.dart';


class rdv_medecin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _rdv_medecin();
}

class _rdv_medecin extends State<rdv_medecin> {
  DateTime ?_dateTime;
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
    double WidthScreen =MediaQuery.of(context).size.width;
    double HeightScreen =MediaQuery.of(context).size.height;
    var rdv_medecincontroller = Rdv_medecincontroller(Rdv_medecin_Data());
    var doctorcontroller = Doctorcontroller(Doctor_Data());
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
      body: FutureBuilder<List<Doctor>>(
        future: doctorcontroller.getDoctor(),
        builder: ( context, snapshot) {
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
                                      child: Text('Dr.${doctor?.Nom}',
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
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
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
                                            _dateTime = date;
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
                                      _dateTime==null ? "Aucune date n'a ete selectionne":"${_dateTime?.day} ${_getMonthDate(_dateTime!.month)} ${_dateTime?.year}",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
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
                            Card(
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
                                    value: medeci_matin1,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin1=val!;
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
                                  Text('9:30 AM'),
                                  Checkbox(
                                    value: medeci_matin2,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin2=val!;
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
                                    value: medeci_matin3,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin3=val!;
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
                                    value: medeci_matin4,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin4=val!;
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
                                    value: medeci_matin5,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin5=val!;
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
                                    value: medeci_matin6,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_matin6=val!;
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
                          childAspectRatio: 2.6,
                          children: [
                            Card(
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
                                    value: medeci_midi1,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi1=val!;
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
                                  Text('3:30 PM'),
                                  Checkbox(
                                    value: medeci_midi2,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi2=val!;
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
                                  Text('4:00 AM'),
                                  Checkbox(
                                    value: medeci_midi3,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi3=val!;
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
                                    value: medeci_midi4,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi4=val!;
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
                                    value: medeci_midi5,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi5=val!;
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
                                    value: medeci_midi6,
                                    onChanged: (val) {
                                      setState(() {
                                        medeci_midi6=val!;
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
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>rdv_confirm()));
                            Rdv_medecin rdv_medecin = Rdv_medecin(Day: _dateTime.toString(),medecin_matin1: medeci_matin1.toString(),medecin_matin2: medeci_matin2.toString(),medecin_matin3: medeci_matin3.toString(),medecin_matin4: medeci_matin4.toString(),medecin_matin5: medeci_matin5.toString(),medecin_matin6: medeci_matin6.toString(),medecin_midi1: medeci_midi1.toString(),medecin_midi2: medeci_midi2.toString(),medecin_midi3: medeci_midi3.toString(),medecin_midi4: medeci_midi4.toString(),medecin_midi5: medeci_midi5.toString(),medecin_midi6: medeci_midi6.toString(),Doctor_Ip: Ip_medecin.text);
                            rdv_medecincontroller.postRdv_medecin(rdv_medecin);
                          },
                          child: Text(
                            'Ajouter horraires',
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
                );

          }, itemCount: snapshot.data?.length ?? 0, separatorBuilder: (BuildContext context, int index) { return Divider(); },);
        },

      ),
    );
  }

}