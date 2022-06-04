import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:e_sante/Doctor/Pages/Patient_historique.dart';
import 'package:e_sante/Doctor/Pages/Historique.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Patient_Data/Patient_data.dart';
import 'package:e_sante/Data/Patient_Data/patient_controller.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';

class Mes_patients extends StatefulWidget {
  const Mes_patients({Key? key}) : super(key: key);

  @override
  State<Mes_patients> createState() => _Mes_patientsState();
}

class _Mes_patientsState extends State<Mes_patients> {
  @override
  Widget build(BuildContext context) {
    var Listpatientcontroller = Patientcontroller(Patients_data());
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff053F5E),
        title: Text(
                'Liste des patients',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Patient>>(
        future: Listpatientcontroller.getPatientList(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            if (snapshot.hasError){
              return Center(child: Text('${snapshot.error}'),);
            }
            return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 40,
              ),
              shrinkWrap: true,
                itemBuilder: (context, index) {
                  var Listpatient = snapshot.data?[index];
                  String sex_convert(){
                    if(Listpatient?.Sexe=='Homme'){
                      return 'H';
                    }else if(Listpatient?.Sexe=='Femme'){
                      return 'F';
                    }else return 'U';

                  }
                  return Container(
                          child:Padding(
                            padding:  EdgeInsets.only(right: WidthScreen/50,left: WidthScreen/40),
                            child: Card(
                              margin: EdgeInsets.only(bottom: HeightScreen/3000),
                              clipBehavior: Clip.antiAlias,
                              color: Colors.grey[200],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(right: WidthScreen/4),
                                    child: CircleAvatar(
                                      radius: 30,


                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '${Listpatient?.Nom}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      ),
                                    ),
                                  ),
                                  //SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        color: Colors.grey[350],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.only(left: WidthScreen/30,right: WidthScreen/30),
                                          child: Text(
                                            'Age\n${Listpatient?.Age}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        color: Colors.grey[350],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding:  EdgeInsets.only(right: WidthScreen/30,left: WidthScreen/30),
                                          child: Text(
                                            'Sexe\n${sex_convert()}',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(bottom: HeightScreen/900),
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>historique()));
                                        },
                                        child: Text(
                                            'Plus de details',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontSize: 16,
                                          ),
                                        ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                  );

                },
              itemCount:  snapshot.data?.length ?? 0,

            );


      }
      )
    );

  }
}
