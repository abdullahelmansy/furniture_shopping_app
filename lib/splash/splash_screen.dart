import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/auth/login/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
            'assets/images/furniture_image.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'MAKE YOUR',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xff606060),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'HOME BEAUTIFUL',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xff303030),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Padding(
                padding: EdgeInsets.only(left: 59.0),
                child: Text(
                  'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff808080),
                  ),
                ),
              ),
              const SizedBox(height: 168),
              Center(
                child: SizedBox(
                  width: 159,
                  height: 54,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
