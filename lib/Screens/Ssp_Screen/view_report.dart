

import 'package:flutter/material.dart';


import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/SHO%20signup/viewreport_vm.dart';
import 'package:flutter_auth/Screens/Ssp_Screen/login_screen.dart';
import 'package:flutter_auth/Screens/Ssp_Screen/registration_page2.dart';
import 'package:flutter_auth/Screens/Ssp_Screen/viewreport_vm.dart';

import 'package:flutter_auth/chatpage/home.dart';

import 'package:flutter_auth/header_widget.dart';

import '../../chatpage/conversation.dart';
import '../user_Login/login_screen.dart';



class ViewReport1 extends StatefulWidget{
  const ViewReport1({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
     return _ViewReport1State();
  }
}

class _ViewReport1State extends State<ViewReport1>{
  List<ChatUsers2> chatUsers = [
    ChatUsers2(name: "Report 1", messageText: "Accident Report", imageURL: "images/userImage1.jpeg", time: "Now"),
    ChatUsers2(name: "Report 2", messageText: "Car theft Report", imageURL: "images/userImage2.jpeg", time: "Yesterday"),
    ChatUsers2(name: "Report 3", messageText: "Stolen Property Report", imageURL: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers2(name: "Report 4", messageText: "Harasment Report", imageURL: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers2(name: "Report 5", messageText: "Kidnapping Report", imageURL: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers2(name: "Report 6", messageText: "Shooting Report", imageURL: "images/userImage6.jpeg", time: "17 Mar"),
    
  
  
  
  ];

  final double  _drawerIconSize = 24;
  final double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report info",
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
                    decoration: BoxDecoration(  borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                 
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage3()),);
                },
              ),
              Divider(color: Theme.of(context).primaryColor, height: 1,),
             
              Divider(color: Theme.of(context).primaryColor, height: 1,),
             
              Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(Icons.logout_rounded, size: _drawerIconSize,color: Theme.of(context).accentColor,),
                title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).accentColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen45()),);
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
                  const Text('SSP', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        ListView.builder(
  itemCount: chatUsers.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return ConversationList(
      name: chatUsers[index].name,
      messageText: chatUsers[index].messageText,
      imageUrl: chatUsers[index].imageURL,
      time: chatUsers[index].time,
      isMessageRead: (index == 0 || index == 3)?true:false,
    );
  },
),      
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