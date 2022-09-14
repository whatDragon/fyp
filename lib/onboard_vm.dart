import 'package:flutter/material.dart';

class Onboardmodel{
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  Onboardmodel({
   required this.img,
   required this.text,
   required this.desc,
   required this.bg,
   required this.button,
  }

  );

}

List<Onboardmodel> screens=<Onboardmodel>[
  Onboardmodel(
    img:  "assets/images/abc1.PNG",
    text: "Interact with Crime",
    desc: "Approve,disapprove,comment and get update for Crime happened by",
    bg: Colors.white,
    button: const Color(0xFF4756DF),
  ),

  Onboardmodel(
    img: 'assets/images/abc5.PNG',
    text: "Alert Nearby Crime",
    desc: "You can add your locations to get alert for any crime happen on nearby places",
    bg: Colors.white,
    button: const Color(0xFF4756DF),
  ),
    Onboardmodel(
    img: 'assets/images/abc3.PNG',
    text: "Report the Crime",
    desc: "You can share Crime on your location easy by few steps with nearby people",
    bg: Colors.white,
    button: const Color(0xFF4756DF),
  ),
];