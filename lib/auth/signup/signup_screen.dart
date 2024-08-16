import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/auth/login/login_screen.dart';
import 'package:furniture_shopping_app/auth/widgets/text_button.dart';

import '../widgets/custom_button.dart';
import '../widgets/form_text.dart';
import '../widgets/text_form_fields.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var formKey = GlobalKey<FormState>();
  bool obscureText1 = true;
  bool obscureText2 = true;
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
                    'WELCOME',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xff303030)),
                  ),
                  const SizedBox(height: 55),
                  const FormText(title: 'Name'),
                  TextFormFields(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Name';
                      }
                      return null;
                    },
                    type: TextInputType.text,
                  ),
                  const SizedBox(height: 30),
                  const FormText(title: 'Email'),
                  TextFormFields(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Email';
                      }
                      return null;
                    },
                    obscureText: false,
                    type: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  const FormText(title: 'Password'),
                  TextFormFields(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Password';
                      }
                      return null;
                    },
                    obscureText: obscureText1,
                    suffixIcon:
                        obscureText1 ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        obscureText1 = !obscureText1;
                      });
                    },
                    type: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 30),
                  const FormText(title: 'Confirm Password'),
                  TextFormFields(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Confirm Password';
                      }
                      return null;
                    },
                    obscureText: obscureText2,
                    suffixIcon:
                        obscureText2 ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        obscureText2 = !obscureText2;
                      });
                    },
                    type: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    title: 'SIGN UP',
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have account? ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff909090)),
                      ),
                      TextButtons(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) {
                                return const LoginScreen();
                              },
                            ),
                          );
                        },
                        title: 'SIGN IN',
                        textSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
