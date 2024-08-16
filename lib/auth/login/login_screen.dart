import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/auth/signup/signup_screen.dart';
import 'package:furniture_shopping_app/auth/widgets/custom_button.dart';
import 'package:furniture_shopping_app/auth/widgets/form_text.dart';
import 'package:furniture_shopping_app/auth/widgets/text_button.dart';
import 'package:furniture_shopping_app/nav_bar.dart';

import '../widgets/text_form_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hello !',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Color(0xff909090)),
                  ),
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xff303030)),
                  ),
                  const SizedBox(height: 58),
                  const FormText(title: 'Email'),
                  TextFormFields(
                    type: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Email';
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  const SizedBox(height: 35),
                  const FormText(title: 'Passwors'),
                  TextFormFields(
                    type: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Password';
                      }
                      return null;
                    },
                    obscureText: obscureText,
                    suffixIcon:
                        obscureText ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  const SizedBox(height: 35),
                  TextButtons(
                    onTap: () {},
                    title: 'Forget Password',
                    textSize: 18,
                  ),
                  const SizedBox(height: 35),
                  CustomButton(
                    title: 'LOGIN',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const NavBar();
                        }));
                      }
                    },
                  ),
                  const SizedBox(height: 35),
                  TextButtons(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const SignupScreen();
                            },
                          ),
                        );
                      },
                      title: 'SIGN UP',
                      textSize: 18)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
