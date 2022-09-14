import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Police%20signup/model/report_model.dart';

import 'package:flutter_auth/Screens/Police%20signup/theme_helper.dart';

import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/header_widget.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class RegistrationPage1 extends StatefulWidget {
  const RegistrationPage1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RegistrationPage1State();
  }
}

class _RegistrationPage1State extends State<RegistrationPage1> {
  final report = Report();
  final personInvolved = PersonInvolved();
  final incident = Incident();
  final _formKey = GlobalKey<FormState>();
  bool male = false;
  bool female = false;
  bool notifiedCheckYes = false;
  bool notifiedCheckNo = false;
  bool witnessCheckYes = false;
  bool witnessCheckNo = false;
  bool treatmentCheckYes = false;
  bool treatmentCheckNo = false;
  bool termsCheck = false;

  // variables

  String name = '';
  String address = '';
  String phoneNumber = '';
  String cnicNumber = '';
  String gender = '';
  String incidentType = '';
  String date = '';
  String time = '';
  String location = '';
  String policeNotified = '';
  int? caseNumber;
  String details = '';
  String anyWitness = '';
  String injuryDetails = '';
  String providedTreatment = '';
  String reporterName = '';
  int? id;

  void generateReport() {
    report.id = id;
    report.name = reporterName;
    personInvolved.name = name;
    personInvolved.address = address;
    personInvolved.phoneNumber = phoneNumber;
    personInvolved.cnicNumber = cnicNumber;
    personInvolved.gender = gender;
    incident.type = incidentType;
    incident.date = date;
    incident.time = time;
    incident.location = location;
    incident.policeNotified = policeNotified;
    incident.caseNumber = caseNumber;
    incident.details = details;
    incident.anyWitness = anyWitness;
    incident.injuryDetails = injuryDetails;
    incident.providedTreatment = providedTreatment;
    setState(() {
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${incident.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
      debugPrint(
          "============================${report.incident!.caseNumber}==========================");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(
              height: 150,
              child: HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
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
                                  border:
                                      Border.all(width: 5, color: Colors.white),
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
                                padding:
                                    const EdgeInsets.fromLTRB(80, 80, 0, 0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "CRIME REPORT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                              fontSize: 30),
                        ),
                        const Text(
                          "Information About The Person Involved In The Incident",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Full Name', 'Enter your Name'),
                            onSaved: (value) {
                              name = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Home Address', 'Enter your house address'),
                            onSaved: (value) {
                              address = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Phone Number", "Enter your phone number"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val == null ||
                                  val.isEmpty ||
                                  val == '' &&
                                      !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                return "Enter a valid phone number";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              phoneNumber = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Cnic no", "Enter your Cnic no"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val == null ||
                                  val.isEmpty ||
                                  val == '' &&
                                      !RegExp(r"^(\d+)*$").hasMatch(val)) {
                                return "Enter a valid Cnic";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              cnicNumber = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                      value: male,
                                      onChanged: (value) {
                                        setState(() {
                                          male = value!;
                                          female = false;
                                          personInvolved.gender = 'Male';
                                          state.didChange(value);
                                        });
                                      },
                                    ),
                                    const Text(
                                      "Male",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Checkbox(
                                      value: female,
                                      onChanged: (value) {
                                        setState(() {
                                          female = value!;
                                          male = false;
                                          gender = 'Female';
                                          state.didChange(value);
                                        });
                                      },
                                    ),
                                    const Text(
                                      "Female",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!termsCheck) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const Text(
                          "Information About The Incident",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Incident Type', 'Enter the incident type'),
                            onSaved: (value) {
                              incidentType = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Incident date', 'Enter the incident date'),
                            onSaved: (value) {
                              date = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper()
                                .textInputDecoration('Time', 'Enter The Time'),
                            onSaved: (value) {
                              time = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Incident Location',
                                'Enter The incident location'),
                            onSaved: (value) {
                              location = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          "Police Notified ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: notifiedCheckYes,
                                        onChanged: (value) {
                                          setState(() {
                                            notifiedCheckYes = value!;
                                            notifiedCheckNo = false;
                                            policeNotified = 'Yes';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "Yes",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Checkbox(
                                        value: notifiedCheckNo,
                                        onChanged: (value) {
                                          setState(() {
                                            notifiedCheckNo = value!;
                                            notifiedCheckYes = false;
                                            policeNotified = 'No';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "No",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!termsCheck) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Case no ", "Enter the case no"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val == null || val.isEmpty || val == '') {
                                return "Enter a valid case no ";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              caseNumber = int.tryParse(value!);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Incident details',
                                'Enter the incident details'),
                            onSaved: (value) {
                              details = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          "Were There Any Witness to the Incident ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: witnessCheckYes,
                                        onChanged: (value) {
                                          setState(() {
                                            witnessCheckYes = value!;
                                            witnessCheckNo = false;
                                            anyWitness = 'Yes';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "Yes",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Checkbox(
                                        value: witnessCheckNo,
                                        onChanged: (value) {
                                          setState(() {
                                            witnessCheckNo = value!;
                                            witnessCheckYes = false;
                                            anyWitness = 'No';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "No",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!termsCheck) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const Text(
                          "Was the indivual was injured if describe the Injury ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            decoration: ThemeHelper().textInputDecoration(
                                'Injury Details',
                                'Enter the details of injury '),
                            onSaved: (value) {
                              injuryDetails = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          "Was There Any Medical Treatment Provided ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: treatmentCheckYes,
                                        onChanged: (value) {
                                          setState(() {
                                            treatmentCheckYes = value!;
                                            treatmentCheckNo = false;
                                            providedTreatment = 'Yes';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "Yes",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Checkbox(
                                        value: treatmentCheckNo,
                                        onChanged: (value) {
                                          setState(() {
                                            treatmentCheckNo = value!;
                                            treatmentCheckYes = false;
                                            providedTreatment = 'No';
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "No",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!termsCheck) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const Text(
                          "Reporter Information",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Reporter Name", "Enter your NAME"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value == '') {
                                return "Enter a valid name";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              name = value!;
                            },
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration(
                                "Reporter id", "Enter your ID"),
                            keyboardType: TextInputType.phone,
                            validator: (val) {
                              if (val == null || val.isEmpty || val == '') {
                                return "Enter a valid ID";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              id = int.tryParse(value!);
                            },
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        FormField<bool>(
                          builder: (state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Checkbox(
                                        value: termsCheck,
                                        onChanged: (value) {
                                          setState(() {
                                            termsCheck = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    const Text(
                                      "I accept all terms and conditions.",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                          validator: (value) {
                            if (!termsCheck) {
                              return 'You need to accept terms and conditions';
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration:
                              ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                generateReport();
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             const ProfilePage1()),
                                //     (Route<dynamic> route) => false);
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        const Text(
                          "Approved by Police",
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: FaIcon(
                                FontAwesomeIcons.googlePlus,
                                size: 35,
                                color: HexColor("#EC2D2F"),
                              ),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        ThemeHelper().alartDialog(
                                            "Google Plus",
                                            "You tap on GooglePlus social icon.",
                                            context),
                                  );
                                });
                              },
                            ),
                            const SizedBox(width: 30.0),
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      width: 5, color: HexColor("#40ABF0")),
                                  color: HexColor("#40ABF0"),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 23,
                                  color: HexColor("#FFFFFF"),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ThemeHelper().alartDialog(
                                          "Twitter",
                                          "You tap on Twitter social icon.",
                                          context);
                                    },
                                  );
                                });
                              },
                            ),
                            const SizedBox(width: 30.0),
                            GestureDetector(
                              child: FaIcon(FontAwesomeIcons.facebook,
                                  size: 35, color: HexColor("#3E529C")),
                              onTap: () {
                                setState(() {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ThemeHelper().alartDialog(
                                          "Facebook",
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
