import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import '../../Login/components/or_divider.dart';

class SocalSignUp extends StatelessWidget {
  const SocalSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const OrDivider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SocalIcon(
            iconSrc: "assets/icons/facebook.svg",
            press: () {},
          ),
          SocalIcon(
            iconSrc: "assets/icons/twitter.svg",
            press: () {},
          ),
          SocalIcon(
            iconSrc: "assets/icons/google-plus.svg",
            press: () {},
          ),
        ],
      ),
    ]);
  }
}
