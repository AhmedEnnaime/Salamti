import 'package:e_sante/Doctor/Pages/Acceuil_medecin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_sante/Doctor/Pages/Profile_medecin.dart';
import 'package:e_sante/Doctor/Pages/rdv_medecin.dart';

class Sidebar extends StatefulWidget {
  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final padding = EdgeInsets.symmetric(horizontal: 15);
  bool value=true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                  'Dr.Mathur',
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
                color: Colors.blue[900]
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
              padding:  EdgeInsets.fromLTRB(0, 0, 50, 0),
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
            trailing: Container(
              child: buildSwitch(),
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
                onPressed: () {},
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
      ),

    );

  }

  Widget buildSwitch() => Switch.adaptive(
    value: value,
    onChanged: (value)=> setState(()=> this.value = value

    ),
  );
}

