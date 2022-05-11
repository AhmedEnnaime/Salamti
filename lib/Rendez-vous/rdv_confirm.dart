import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_controller.dart';
import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Rdv_patient_Model.dart';
import 'package:e_sante/Data/Rdv_patient_Data/Implement_Rdv_patient.dart';

class rdv_confirm extends StatefulWidget {
  @override
  _rdv_confirmState createState() => _rdv_confirmState();
}

class _rdv_confirmState extends State<rdv_confirm> {
  @override
  Widget build(BuildContext context) {
    var rdv_patientcontroller = Rdv_patientcontroller(Rdv_patient_Data());
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan[900],
          shape: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFEF5350),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(),

          ),

      ),
      body:
         FutureBuilder<List<Rdv_patient>>(
           future: rdv_patientcontroller.getRdv_patient(),
           builder: ( context, snapshot) {
             if(snapshot.connectionState == ConnectionState.waiting){
               return Center(child: CircularProgressIndicator(),);
             }
             if (snapshot.hasError){
               return Center(child: Text('${snapshot.error}'),);
             }
             return ListView.separated(
                 itemBuilder: (context, index) {
                   var redv_patient = snapshot.data?[index];
                   return Column(
                     children: [
                       Padding(
                         padding: EdgeInsets.fromLTRB(160, 90, 160, 0),
                         child: Icon(
                           Icons.offline_pin_rounded,
                           size: 80,
                           color: Colors.grey[600],

                         ),
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                             child: Text(
                               'Merci  pour votre réservation',
                               style: TextStyle(
                                 fontSize: 24,

                               ),
                             ),
                           )
                         ],
                       ),
                       Padding(
                         padding: EdgeInsets.fromLTRB(50, 20, 30, 0),
                         child: Text(
                           'Vous avez pris un rendez-vous le  ${redv_patient?.Day} à ${redv_patient?.rdv_temps}',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 18,

                           ),
                         ),
                       ),
                       Padding(
                         padding:  EdgeInsets.fromLTRB(50, 65, 80, 0),
                         child: ElevatedButton(
                             style: ElevatedButton.styleFrom(
                               minimumSize: Size(50, 50),
                               primary: Colors.cyan[900],
                               padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                             ),
                             onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
                             },
                             child: Row(
                               children: [
                                 Icon(
                                   Icons.home,
                                   size: 30,
                                 ),
                                 SizedBox(width: 30,),
                                 Text(
                                   'Acceuil',
                                   style: TextStyle(
                                     fontSize: 20,


                                   ),
                                 )
                               ],

                             )

                         ),
                       )



                     ],
                   );
                 },
               itemCount: snapshot.data?.length ?? 0,
               separatorBuilder: (BuildContext context, int index) { return Divider(); },
             );

           }
         ),


    );
  }
}
