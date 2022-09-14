import 'package:flutter/material.dart';

import 'package:flutter_auth/Screens/Police%20signup/policelogin/login_screen_top_image.dart';

import 'package:flutter_auth/Screens/Ssp_Screen/login_form.dart';

import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/responsive.dart';





class LoginScreen45 extends StatelessWidget {
  const LoginScreen45({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true ,
      body: SingleChildScrollView(
      
      child: SingleChildScrollView(
        reverse: true,
        child: Responsive(
          mobile: const MobileLoginScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: LoginScreenTopImage(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: LoginForm3(),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
     ) );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const LoginScreenTopImage(),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm3(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
