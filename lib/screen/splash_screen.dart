import 'package:flutter/material.dart';
import 'package:healthy_petv2/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/bg.jpg'),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 42.0),
              child: SafeArea(
                child: Column(
                  children: [
                    Image.asset('assets/images/logo.png', width: 144),
                    const SizedBox(
                      height: 73,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: 'Helping you \nto keep',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                                text: ' your bestie\n',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),),
                            TextSpan(text: 'stay healthy!'),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
