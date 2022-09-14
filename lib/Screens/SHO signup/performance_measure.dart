
import 'package:flutter/material.dart';

import 'package:flutter_auth/Screens/Police%20signup/theme_helper.dart';
import 'package:flutter_auth/Screens/SHO%20signup/profile_page1.dart';

import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/header_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class PerformanceMeasure extends  StatefulWidget{
 
  const PerformanceMeasure({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
     return _PerformanceMeasureState();
  }
}

class _PerformanceMeasureState extends State<PerformanceMeasure>{

  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      backgroundColor: Colors.white,
      
      body: SingleChildScrollView(
       
        child: Stack(
          children: [
            Container(
              height: 150,
              child: const HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 50, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Form(
                    
                    key: _formKey,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  
                                 
                                   
                                  borderRadius: BorderRadius.circular(100),
                                
                                  border: Border.all(
                                    
                                      width: 5, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      
                                      color: Colors.black12,
                                      blurRadius: 0,
                                      offset: Offset(5, 5),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                                
                              ),
                              Container(
                                padding: const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                        
                      
                        const Text("CRIME REPORT",style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize: 30 ),),

                  
                  
                        const Text("Information About The Person Involved In The Incident",style: TextStyle(fontWeight: FontWeight.bold),),
                        
                          const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Team ID ', 'Enter Team ID'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                    
                       
                   
                          const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Reported Time ', 'Enter Time'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                      
                      
                       
                        const Text("Information About The Incident",style: TextStyle(fontWeight: FontWeight.bold),),
                       const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Incident Type', 'Enter the incident type'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        
                        const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Incident date', 'Enter the incident date'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                            decoration: ThemeHelper().textInputDecoration('Time', 'Enter The Time'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                            decoration: ThemeHelper().textInputDecoration('Incident Location', 'Enter The incident location'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                         
                         
                       
                          const SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                             
                                "Case no ",
                                "Enter the case no"),
                                 
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if(val == null || val.isEmpty || val == ''||!(val.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                                return "Enter a valid case no ";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        const SizedBox(height: 40,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Incident details', 'Enter the incident details'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        
                         const SizedBox(height: 15.0),
                         const Text("Were There Any Witness to the Incident ",style: TextStyle(fontWeight: FontWeight.bold),),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              
                              children: <Widget>[
                                Row(
                                  
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                        
                                        const Text("Yes", style: TextStyle(color: Colors.grey),),
                                  
                                         Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    
                                        const Text("No", style: TextStyle(color: Colors.grey),),
                                  
                                        
                                  
                                        
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const Text("Was the indivual was injured if describe the Injury ",style: TextStyle(fontWeight: FontWeight.bold),),
                         const SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
            
                          validator: (value) {
                            if (value == null || value.isEmpty || value == '') {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          
                            decoration: ThemeHelper().textInputDecoration('Injury Details', 'Enter the details of injury '),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                         
                        
                         const SizedBox(height: 15.0),
                         const Text("Was There Any Medical Treatment Provided ",style: TextStyle(fontWeight: FontWeight.bold),),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              
                              children: <Widget>[
                                Row(
                                  
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                        
                                        const Text("Yes", style: TextStyle(color: Colors.grey),),
                                  
                                         Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    
                                        const Text("No", style: TextStyle(color: Colors.grey),),
                                  
                                        
                                  
                                        
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                       const Text("Reporter Information",style: TextStyle(fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20.0),
                         
                        Container(
                          child: TextFormField(
                            
                            decoration: ThemeHelper().textInputDecoration("Reporter Name", "Enter your NAME"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if(value == null || value.isEmpty || value == ''||!(value.isEmpty) && !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").hasMatch(value)){
                                return "Enter a valid name";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                             
                                "Reporter id",
                                "Enter your ID"),
                                 
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if(val == null || val.isEmpty || val == ''||!(val.isEmpty) && !RegExp(r"^(\d+)*$").hasMatch(val)){
                                return "Enter a valid ID";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                       
                       
                        const SizedBox(height: 15.0),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: checkboxValue,
                                        onChanged: (value) {
                                          setState(() {
                                            checkboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text("I accept all terms and conditions.", style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "SUBMIT".toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => const ProfilePage1()
                                    ),
                                        (Route<dynamic> route) => false
                                );
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        const Text("Approved by Police",  style: const TextStyle(color: Colors.grey),),
                        const SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: FaIcon(
                                FontAwesomeIcons.googlePlus, size: 35,
                                color: HexColor("#EC2D2F"),),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ThemeHelper().alartDialog("Google Plus","You tap on GooglePlus social icon.",context);
                                    },
                                  );
                                });
                              },
                            ),
                            const SizedBox(width: 30.0,),
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(width: 5, color: HexColor("#40ABF0")),
                                  color: HexColor("#40ABF0"),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.twitter, size: 23,
                                  color: HexColor("#FFFFFF"),),
                              ),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ThemeHelper().alartDialog("Twitter","You tap on Twitter social icon.",context);
                                    },
                                  );
                                });
                              },
                            ),
                            const SizedBox(width: 30.0,),
                            GestureDetector(
                              child: FaIcon(
                                FontAwesomeIcons.facebook, size: 35,
                                color: HexColor("#3E529C"),),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ThemeHelper().alartDialog("Facebook",
                                          "You tap on Facebook social icon.",
                                          context);
                                    },
                                  );
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}