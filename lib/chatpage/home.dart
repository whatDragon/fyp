
import 'package:flutter/material.dart';
import 'package:flutter_auth/chatpage/chatpage_vu.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "chat",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label:"Channels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            
            label:"Profile",
            
           
          ),
          
        ],
        
      ),
      
    );
  }
}