import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/onboard_vm.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/ottp/welcome.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  _OnBoardState createState() =>  _OnBoardState();
}

class  _OnBoardState extends State<OnBoard> {
  int currentIndex=0;
  late PageController _pageController;
  @override
  void initState(){
    _pageController=PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  _storeOnBoardInfo() async{
    int isViewed = 0;
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setInt('onBoard',isViewed);
  }
  
  
  @override
  Widget build(BuildContext context) {
     
      return Scaffold(
        backgroundColor: currentIndex % 2 == 0 ? kwhite:kblue,
        appBar:AppBar(
          backgroundColor: currentIndex % 2 == 0 ? kwhite:kblue,
          elevation: 0,
          actions:[
            TextButton(onPressed:()async{
              await _storeOnBoardInfo();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Welcome()));
            } , 
            child: const Text('Skip',
            ),),
          ],
 
       ),
       body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child:PageView.builder(
          itemCount: screens.length, 
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              currentIndex=index;

            });
          } ,     
          itemBuilder:(context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Image.asset(screens[index].img),
                Container(
                  height: 10.0,
                  child:ListView.builder(
                    itemCount: screens.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(_, index )
                    {
                     return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal:3.0),
                          width:  currentIndex ==index? 25.0 :8.0,
                          height:8,
                          decoration: BoxDecoration(
                            color: currentIndex== index ? kbrown:kbrown300,
                            borderRadius: BorderRadius.circular(10.0)
                          )
                        )
                      ],
                     );
                    } 
                    ),
                ),
                Text(
                  screens[index].text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize:27.0,
                    fontWeight: FontWeight.bold,
                    color:index % 2 ==0 ?kblack: kwhite,
                  ),
                ),
                Text(
                  screens[index].desc,
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontSize:14.0,
                    color:index % 2 ==0 ?kblack: kwhite,
                  ),
                ),
                InkWell(
                  onTap: () async{
                    if(index==screens.length-1)
                    {
                      await _storeOnBoardInfo();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Welcome()));
                    }
                    _pageController.nextPage(
                      duration: const Duration(microseconds: 300), curve: Curves.bounceIn);
                  },
                  child:Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal:30.0,vertical: 10.0),
                      decoration:BoxDecoration(
                        color: index % 2 ==0 ? kblue:kwhite,
                        borderRadius:BorderRadius.circular(15.0),
                        

                      ),
                      child:Row(
                        mainAxisSize: MainAxisSize.min, children: [
                        Text("Next",
                        style: 
                        TextStyle(fontSize: 16.0,color:index % 2 == 0? kwhite:kblue,)),
                        const SizedBox(width:15.0),
                        Icon(Icons.arrow_forward_sharp, color:index % 2 == 0? kwhite: kblue,),              
              ]),
                    ),
                    )
                
              ],
            );
          })),
        );
       
    

  }
}

