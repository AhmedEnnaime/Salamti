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
    var Listcurescontroller = Curescontroller(Cures_Data());
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[800],
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
            future:Listcurescontroller.getListCures(),
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
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(flex:1,child: Text('${Listcures?.Patient_Ip}')),
                                Expanded(flex:1,child: Text('${Listcures?.cure_day}')),
                                Expanded(flex:1,child: Text('${Listcures?.Next_cure}')),
                                Expanded(flex:1,child: Text('${Listcures?.Temps_restant}')),
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
