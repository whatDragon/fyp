import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../constants.dart';

class LoginScreenTopImage3 extends StatelessWidget {
  const LoginScreenTopImage3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        const Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40 ),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/login.svg"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding ),
      ],
    );
  }
}