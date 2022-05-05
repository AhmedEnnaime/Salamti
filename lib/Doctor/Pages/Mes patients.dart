import 'package:e_sante/Data/Patient_Data/User.dart';
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
        backgroundColor: Colors.blue[800],
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
            return ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context, index) {
                  var Listpatient = snapshot.data?[index];
                  return Column(
                    children: [
                      Container(
                        height: 100,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(flex:1,child: Text('${Listpatient?.Ip}')),
                                Expanded(flex:1,child: Text('${Listpatient?.Nom}')),
                                Expanded(flex:1,child: Text('${Listpatient?.Tel}')),
                                Expanded(flex:1,child: Text('${Listpatient?.Sexe}')),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ],
                  );

                },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 0.5,
                  height: 0.5,
                );

            },
              itemCount:  snapshot.data?.length ?? 0,
            );


      }
      )
    );

  }
}
