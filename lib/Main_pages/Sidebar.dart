import 'package:e_sante/Main_pages/Acceuil.dart';
import 'package:e_sante/Main_pages/Toxicity.dart';
import 'package:e_sante/Rendez-vous/rdv.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_sante/Profile/Profile.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
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
                  'Ahmed Ennaime',
                   style: TextStyle(
                     fontSize: 30
                   )
              ),
            ),
            accountEmail: Padding(
              padding:  EdgeInsets.fromLTRB(40, 0,0, 0),
              child: Text(
                  'Patient',
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
              color: Colors.cyan[900]
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Acceuil()));
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
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/Toxicités.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
            ),
            title: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Toxicity()));
                },
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0, 0, 130, 0),
                  child: Text(
                      'Toxicités',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                  ),
                ),
            ),
          ),
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
              padding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
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
              padding:  EdgeInsets.fromLTRB(0, 0, 90, 0),
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
            trailing: ClipOval(
              child: Container(
                color: Colors.yellow[600],
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>rdv()));
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
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/guide.png',
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
                      "Guide d'utilisation",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                  ),

              ),
            ),
          ),
        SizedBox(height: 10,),
        Image.asset(
            'assets/people.png',
        )

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

