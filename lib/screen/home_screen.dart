import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Human!',
                    style: GoogleFonts.manrope(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        FeatherIcons.shoppingBag,
                        color: Color(0xff818AF9),
                      ),
                      Positioned(
                        left: 15,
                        top: -3,
                        child: Container(
                          width: 13,
                          height: 13,
                          decoration: const BoxDecoration(
                            color: Color(0xffEF6497),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mPlus1p(
                                fontSize: 10,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                            ),
                          ),
                        ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 184,
                decoration: BoxDecoration(
                  color: const Color(0xff818AF9),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  children: [
                    Image.asset('assets/images/cat_card.png')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
