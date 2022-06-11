import 'package:e_sante/Doctor/Login/login_medecin.dart';
import 'package:e_sante/Doctor/Pages/Acceuil_medecin.dart';
import 'package:e_sante/Main_pages/Roles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Doctor/Pages/Profile_medecin.dart';
import 'package:e_sante/Doctor/Pages/rdv_medecin.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_Model.dart';
import 'package:e_sante/Data/Doctor_Data/Implement_Doctor.dart';
import 'package:e_sante/Data/Doctor_Data/Doctor_controller.dart';

class Sidebar extends StatefulWidget {
  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final padding = EdgeInsets.symmetric(horizontal: 15);
  bool value=true;

  @override
  Widget build(BuildContext context) {
    var doctorcontroller = Doctorcontroller(Doctor_Data());
    return FutureBuilder<List<Doctor>>(
      future:doctorcontroller.getDoctor() ,
      builder: ( context,  snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }
        if (snapshot.hasError){
          return Center(child: Text('${snapshot.error}'),);
        }
        return SafeArea(
          child: Drawer(
            backgroundColor: Colors.grey[300],
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context,  index) {
                var doctor = snapshot.data?[index];
                return Column(
                  children: [
                    UserAccountsDrawerHeader(
                      accountName: Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Text(
                            'Dr.${doctor?.Nom}',
                            style: TextStyle(
                                fontSize: 30
                            )
                        ),
                      ),
                      accountEmail: Padding(
                        padding:  EdgeInsets.fromLTRB(40, 0,0, 0),
                        child: Text(
                          'Medecin',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      currentAccountPicture: CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/User.jpg',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),

                        ),

                      ),

                      decoration: BoxDecoration(
                          color: Color(0xff053F5E)
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/Acceuil.png',
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 140, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil_medecin()));
                          },
                          child: Text(
                            'Acceuil',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/Notifications.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 30, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),

                        ),

                      ),
                      trailing: Container(
                        child: buildSwitch(),
                      ),
                    ),
                    SizedBox(height: 20,),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/messages.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 130, 0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Messages',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 120, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_medecin()));
                          },
                          child: Text(
                            'Mon profile',
                            style: TextStyle(
                              color: Colors.black,

                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/rdv.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 50, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>rdv_medecin()));
                          },
                          child: Text(
                            "Rendez-vous d'urgence",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/Sign Out.png',
                          fit: BoxFit.cover,
                          width: 30,
                          height: 30,
                        ),
                      ),
                      title: Padding(
                        padding:  EdgeInsets.fromLTRB(0, 0, 80, 0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Roles()));
                          },
                          child: Text(
                            "Se deconnecter",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),

                        ),
                      ),
                    ),

                  ],
                );
              }, itemCount: snapshot.data?.length ?? 0, separatorBuilder: (BuildContext context, int index) { return Divider(); },

            )
            ),
        );



      },

    );

  }

  Widget buildSwitch() => Switch.adaptive(
    value: value,
    onChanged: (value)=> setState(()=> this.value = value

    ),
  );
}

