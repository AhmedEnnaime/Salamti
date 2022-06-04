import 'package:e_sante/Data/Rdv_patient_Data/Implement_Rdv_patient.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_controller.dart';
import 'package:flutter/material.dart';

class Ajouter_rdv extends StatefulWidget {

  @override
  State<Ajouter_rdv> createState() => _Ajouter_rdvState();
}

class _Ajouter_rdvState extends State<Ajouter_rdv> {

  @override
  Widget build(BuildContext context) {
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    var rdvpatientcontroller = Rdv_patientcontroller(Rdv_patient_Data());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff053F5E),
        title: Row(
            children: [
              Icon(
                Icons.bookmark,
                size: 30,
              ),
              SizedBox(width: 10,),
              Text(
                'Liste des rendez-vous',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

        centerTitle: true,



      ),
      body: FutureBuilder<List<Rdv_patient>>(
        future: rdvpatientcontroller.getRdv_patient_medecin(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator(),);
            }
            if (snapshot.hasError){
              return Center(child: Text('${snapshot.error}'),);
            }
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio:4,
                  mainAxisSpacing: 7

                ),
                itemCount: snapshot.data?.length ?? 0,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  var Listrdvmedecin = snapshot.data?[index];
                  return Card(
                    margin: EdgeInsets.only(left: WidthScreen/30,right: WidthScreen/35,bottom: HeightScreen/60,top: HeightScreen/60),
                    clipBehavior: Clip.antiAlias,
                    color: Colors.grey[400],
                    shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 14, 0, 14),
                          child: CircleAvatar(

                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                '${Listrdvmedecin?.Patient_nom}',
                                style: TextStyle(
                                  color: Colors.red[300],
                                  fontSize: 16,
                                ),
                              ),

                            ),
                            Row(
                              children: [
                                Text('${Listrdvmedecin?.Day}'),
                                SizedBox(width: 80,),
                                Text('${Listrdvmedecin?.rdv_temps}')
                              ],
                            )
                          ],
                        ),

                      ],
                    ),

                  );
                }
            );

      })
    );


  }
}
