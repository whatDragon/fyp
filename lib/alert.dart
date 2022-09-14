import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';


class MyAlert extends StatelessWidget {  
  final TextEditingController _textFieldController = TextEditingController();

  MyAlert({Key? key}) : super(key: key);  
  
  _displayDialog(BuildContext context) async {  
    return showDialog(  
        context: context,  
        builder: (context)
        
         {  
       
          return AlertDialog(  
            title: const Text('Alert Info'),  
     
            content: TextField(  
              controller: _textFieldController,  
              decoration: const InputDecoration(hintText: "Help"), 
  
            ),  
            
            actions: <Widget>[  
              new TextButton(  
                child: const Text('SUBMIT'),  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
              )  
            ],  
          );  
        });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      
      body: Center(  
        
         child: const Text('On Our Way Stay Safe'),  
          
        ),  
    );  
     
  }  
}  