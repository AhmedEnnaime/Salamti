import 'package:e_sante/Data/Cures_Data/Implement_cures.dart';
import 'package:e_sante/Data/Patient_Data/User.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Data/Cures_Data/Cures_Model.dart';
import 'package:e_sante/Data/Cures_Data/Cures_controller.dart';

class Liste_cures extends StatefulWidget {
  const Liste_cures({Key? key}) : super(key: key);

  @override
  State<Liste_cures> createState() => _Liste_curesState();
}

class _Liste_curesState extends State<Liste_cures> {
  @override
  Widget build(BuildContext context) {
    var curescontroller = Curescontroller(Cures_Data());
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff053F5E),
          title: Text(
            'Liste des cures',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Cures_Model>>(
          future: curescontroller.gettodayCures(),
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
                var Listcures = snapshot.data?[index];
                return Column(
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 20),
                      child: Column(
                        children: [
                          Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(
                                  children: [
                                    Center(child: Text(
                                      'Nom du patient',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    )),
                                    Center(child: Text(
                                      'Date du dernière cure',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    )),
                                    Center(child: Text(
                                      'Date du prochaine cure',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15
                                      ),
                                    )),
                                  ]
                              ),
                              TableRow(
                                  children: [
                                    Center(child: Text('${Listcures?.Patient_nom}')),
                                    Center(child: Text(
                                      '${Listcures?.cure_day}',
                                      textAlign: TextAlign.center,
                                    )),
                                    Center(child: Text('${Listcures?.Next_cure}')),
                                  ]
                              ),
                            ],
                          )
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



          }),

        );

  }
}
