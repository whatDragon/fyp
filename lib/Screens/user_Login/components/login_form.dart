import 'package:flutter/material.dart';

import 'package:flutter_auth/profile_page.dart';
import 'package:flutter_auth/registration_page.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
    String? email;
    String? password;
   
    return SingleChildScrollView(
      reverse: true,
      
      child: Form(
        key: formkey,
        child: Column(
          
        
          children: [
        
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              cursorColor: kPrimaryColor,
              onSaved: (email) {},
              decoration: const InputDecoration(
                hintText: "Your email",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: kPrimaryColor,
                decoration: const InputDecoration(
                  hintText: "Your password",
                
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Icon(Icons.lock),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
             Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                email = emailController.text.trim();
                password = passwordController.text.trim();
               if (email == 'asd' && password == '123') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder:(context) 
                                {
                                    return const ProfilePage();
                                }));
                                }
                                else 
                                {
                                  debugPrint('Invalid credentials');
                                }
              },
              child: Text(
                "Login".toUpperCase(),
              ),
            ),
          ),
            const SizedBox(height: defaultPadding/2),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) 
                    {
      
                      return const RegistrationPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
