

import 'package:flutter/material.dart';


import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/SHO%20signup/performance_measure.dart';
import 'package:flutter_auth/Screens/SHO%20signup/view_report.dart';
import 'package:flutter_auth/alert.dart';
import 'package:flutter_auth/chatpage/home.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/header_widget.dart';

import '../user_Login/login_screen.dart';
import 'registration_page2.dart';

class ProfilePage1 extends StatefulWidget{
  const ProfilePage1({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
     return _ProfilePage1State();
  }
}

class _ProfilePage1State extends State<ProfilePage1>{

  final double  _drawerIconSize = 24;
  final double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).accentColor,]
              )
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                  new IconButton(
  icon: new Icon(Icons.notifications),
  onPressed: () { 
     Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  HomePage();
                },
              )
     );
   },
),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                 
                  ),
                )

              ],
              
                          ),
          
          
        )
        
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.2),
                    Theme.of(context).accentColor.withOpacity(0.5),
                  ]
              )
          ) ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.0, 1.0],
                    colors: [ Theme.of(context).primaryColor,Theme.of(context).accentColor,],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Crime Reporting",
                    style: TextStyle(fontSize: 25,color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
             
              ListTile(
                leading: Icon(Icons.login_rounded,size: _drawerIconSize,color: Theme.of(context).accentColor),
                title: Text('Login Page', style: TextStyle(fontSize: _drawerFontSize, color: Theme.of(context).accentColor),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              
              ListTile(
                leading: Icon(Icons.person_add_alt_1, size: _drawerIconSize,color: Theme.of(context).accentColor),
                title: Text('Registration Page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage2()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
             
              Divider(color: Theme.of(context).primaryColor, height: 1,),
             
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()),);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: 100, child: const HeaderWidget(100,false,Icons.house_rounded),),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(5, 5),),
                      ],
                    ),
                    child: Icon(Icons.person, size: 80, color: Colors.grey.shade300,),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Mr.Sharjeel Imtiaz', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  const Text('SHO', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.grey,
                                      tiles: [
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 4),
                                          leading: Icon(Icons.my_location),
                                          title: Text("Location"),
                                          subtitle: Text("Islamabad"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.email),
                                          title: Text("Email"),
                                          subtitle: Text("sharjeelimtiaz210@gmail.com"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.phone),
                                          title: Text("Phone"),
                                          subtitle: Text("03070558750"),
                                        ),
                                        const ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("About Me"),
                                          subtitle: Text(
                                              "SHO"),
                                              
                                        ),
                                        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  const ViewReport();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, elevation: 0),
          child: Text(
            "View Report".toUpperCase(),
            style: const TextStyle(color: Colors.red),
          ),
        ),
         SizedBox(
      height: 10, // <-- SEE HERE
    ),
         
         ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  const  PerformanceMeasure();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, elevation: 0),
          child: Text(
            "Performance Measure ".toUpperCase(),
            style: const TextStyle(color: Colors.red),
          ),
        ),
         SizedBox(
      height: 10, // <-- SEE HERE
    ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  const  PerformanceMeasure();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, elevation: 0),
          child: Text(
            "Live Tracking ".toUpperCase(),
            style: const TextStyle(color: Colors.red),
          ),
        ),
         SizedBox(
      height: 10, // <-- SEE HERE
    ),
        ElevatedButton(
          
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return  const  PerformanceMeasure();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              primary: kPrimaryColor, elevation: 0),
          child: Text(
            "High Crime Region ".toUpperCase(),
            style: const TextStyle(color: Colors.red),
          ),
        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}