import 'package:candy_store/utils/constants.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: roseQuartz,
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 60,
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: lightSerenity,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => AdminDashboard(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.query_builder_rounded,
              color: lightSerenity,
            ),
            title: Text(
              'Session Requests',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SessionRequestPage(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.margin,
              color: lightSerenity,
            ),
            title: Text(
              'Manage sessions',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ManageSessionsPage(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.app_registration,
              color: lightSerenity,
            ),
            title: Text(
              'Manage Registerations',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ManageRegistration(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy_outlined,
              color: lightSerenity,
            ),
            title: Text(
              'Tutoring Requests',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ManageTutoingRequest(),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
