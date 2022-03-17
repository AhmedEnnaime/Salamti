import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_survey2.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/variables.dart';
import 'package:e_sante/Fievre_survey.dart';
import 'package:e_sante/Toxicite_digestive/Constipation/Constipation_advices.dart';

class Constipation3 extends StatefulWidget {
  @override
  State<Constipation3> createState() => _Constipation3State();
}

class _Constipation3State extends State<Constipation3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: Text(
          'Constipation',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 40, 25),
            child: Container(

            ),
          ),

        ),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Cocher les symptomes que vous sentez :',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10,top: 20),
              child: Card(
                margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                clipBehavior: Clip.antiAlias,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,)
                ),
                child: CheckboxListTile(
                  title: Text(
                    'Douleurs et crampes associées ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  value: Crampes_value,
                  onChanged: (val){
                    setState(() {
                      Crampes_value=val!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child:CheckboxListTile(
                    title: Text(
                      'Saignement digestif associé',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Digestif_value,
                    onChanged: (val){
                      setState(() {
                        Digestif_value=val!;
                      });
                    },
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child:CheckboxListTile(
                    title: Text(
                      'Vomissements',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Vms_value,
                    onChanged: (val){
                      setState(() {
                        Vms_value=val!;
                      });
                    },
                  ),
                )
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: Card(
                  margin: EdgeInsets.fromLTRB(15, 20, 16, 0),
                  clipBehavior: Clip.antiAlias,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,)
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      'Fièvre',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    value: Fvr_value,
                    onChanged: (val){
                      setState(() {
                        Fvr_value=val!;
                      });
                    },
                  ),
                )
            ),
            Padding(
              padding:  EdgeInsets.only(left: 30,top: 50),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation2()));

                    },
                    child: Text(
                      'Précedent',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[900],
                        minimumSize: Size(40, 40),
                        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10)
                    ),
                    onPressed: () {
                      if(Fvr_value == true){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Fievre()));
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Constipation_advices()));
                      }

                    },
                    child: Text(
                      'Suivant',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],

        ) ,
      ),
    );
  }
}
