import 'dart:ui';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/Data/Patient_Data/patient_controller.dart';
import 'package:e_sante/Data/Rdv_medecin_Data/Rdv_medecin_Model.dart';
import 'package:e_sante/variables.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Rendez-vous/rdv_confirm.dart';
import '../Data/Rdv_medecin_Data/Implement_Rdv_medecin.dart';
import '../Data/Rdv_medecin_Data/Rdv_medecin_controller.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_controller.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Implement_Rdv_patient.dart';

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
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    var rdv_medecincontroller = Rdv_medecincontroller(Rdv_medecin_Data());
    var rdv_patientcontroller = Rdv_patientcontroller(Rdv_patient_Data());
    var patientcontroller = Patientcontroller(Patients_data());
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
      body: FutureBuilder<List<Rdv_medecin>>(
        future: rdv_medecincontroller.getRdv_medecin(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if (snapshot.hasError){
            return Center(child: Text('${snapshot.error}'),);
          }
          return ListView.separated(
              itemBuilder: (context, index) {
                var rdv_medecinn = snapshot.data?[index];
                bool matin1_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin1=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool matin2_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin2=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool matin3_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin3=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool matin4_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin4=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool matin5_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin5=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool matin6_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_matin6=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi1_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi1=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi2_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi2=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi3_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi3=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi4_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi4=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi5_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi5=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
                bool midi6_visibility(){
                  if (rdv_medecinn?.Day == dateTime.toString()){
                    if(rdv_medecinn?.medecin_midi6=='true'){
                      return true;
                    }
                  }else return false;
                  return false;
                }
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
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Text('Rendez-vous disponibles',
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
                            )
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
                                    Radio<String>(
                                      value: '9:00 AM',
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                               visible:matin1_visibility() ,
                            ),
                            Visibility(
                              visible: matin2_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('9:30 AM'),
                                    Radio<String>(
                                      value: "9:30 AM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: matin3_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('10:00 AM'),
                                    Radio<String>(
                                      value: "10:00 AM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: matin4_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('10:30 AM'),
                                    Radio<String>(
                                      value: "10:30 AM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: matin5_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('11:00 AM'),
                                    Radio<String>(
                                      value: "11:00 AM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      },groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: matin6_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('11:30 AM'),
                                    Radio<String>(
                                      value: "11:30 AM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
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
                                    Radio<String>(
                                      value: "3:00 PM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                               visible:midi1_visibility() ,
                            ),
                            Visibility(
                              visible: midi2_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('3:30 PM'),
                                    Radio<String>(
                                      value: "3:30 PM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: midi3_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4:00 PM'),
                                    Radio<String>(
                                      value: "4:00 PM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      },groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: midi4_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4:30 PM'),
                                    Radio<String>(
                                      value: "4:30 PM",
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      }, groupValue: rdv_time,

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: midi5_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('5:00 PM'),
                                    Radio<String>(
                                      value: '5:00 PM',
                                      groupValue: rdv_time,
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      },

                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: midi6_visibility(),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                color: Colors.grey[200],
                                shape: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black,)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('5:30 PM'),
                                    Radio<String>(
                                      value: "5:30 PM",
                                      groupValue: rdv_time,
                                      onChanged: (value) {
                                        setState(() {
                                          rdv_time=value!;
                                        });

                                      },

                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      FutureBuilder<List<Patient>>(
                        future:patientcontroller.fetchPatientList() ,
                        builder: ( context,snapshot) {
                          if(snapshot.connectionState == ConnectionState.waiting){
                            return Center(child: CircularProgressIndicator(),);
                          }
                          if (snapshot.hasError){
                            return Center(child: Text('${snapshot.error}'),);
                          }
                          return Container(
                            width:WidthScreen ,
                            height: HeightScreen/10,
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  var patient = snapshot.data?[index];
                                  return Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
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
                                        Rdv_patient rdv_patient = Rdv_patient(Day:' ${dateTime?.day.toString()} ${_getMonthDate(dateTime!.month).toString()} ${dateTime?.year.toString()}',rdv_temps: rdv_time.toString(),Patient_Ip: IP.text,Doctor_Ip: patient?.Doctor_Ip,Patient_nom: patient?.Nom);
                                        rdv_patientcontroller.postRdv_patient(rdv_patient);
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
                                  );

                            }, itemCount: snapshot.data?.length ?? 0, separatorBuilder: (BuildContext context, int index) { return Divider(); },),
                          );

                        },
                      ),
                    ],
                  ),
                );

              }, separatorBuilder: ( context, index) { 
                return Divider();
          }, itemCount: snapshot.data?.length ?? 0,);
        },

      ),
    );
  }
}