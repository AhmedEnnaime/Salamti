import 'package:flutter/material.dart';

class Ajouter_rdv extends StatefulWidget {

  @override
  State<Ajouter_rdv> createState() => _Ajouter_rdvState();
}

class _Ajouter_rdvState extends State<Ajouter_rdv> {
  DateTime ?_dateTime;
  TimeOfDay ?_timeOfDay;
  @override
  Widget build(BuildContext context) {
    double WidthScreen=MediaQuery.of(context).size.width;
    double HeightScreen=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Padding(
          padding:  EdgeInsets.only(left: WidthScreen/50,right: WidthScreen/50),
          child: Row(
            children: [
              Icon(
                Icons.bookmark_add_outlined,
                size: 30,
              ),
              SizedBox(width: 10,),
              Text(
                'Ajouter rendez-vous',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: HeightScreen/15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                        size: 30,
                        color: Colors.blue[800],
                      ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    _dateTime==null ? "Aucune date n'a ete selectionne":_dateTime.toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )

                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                      ).then((time) {
                        _timeOfDay=time;
                      });


                    },
                    icon: Icon(
                      Icons.watch_later_outlined,
                      size: 30,
                      color: Colors.blue[800],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    _timeOfDay==null ? "Aucune horraire n'a ete selectionne":_timeOfDay.toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )

                ],
              ),
            SizedBox(height: 25,),

            Card(
              margin: EdgeInsets.only(left: WidthScreen/20,right: WidthScreen/20),
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Color(0xffF5591F),
                  hintText: "Nom du patient",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  icon: Padding(
                    padding:  EdgeInsets.only(left: WidthScreen/30),
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                      ),
                      onPressed: () {},

                    ),
                  ),

                ),

              ),

            ),
          ],
        ),

      ) ,

    );
  }
}
