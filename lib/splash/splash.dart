import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/Auth/screens/signup/signup.dart';
import 'package:quran/components/button.dart';
import 'package:quran/const/colors.dart';
// import 'package:quran/login/screens/signup/signup.dart';

class Spalsh extends StatelessWidget {
  const Spalsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 113),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 81, vertical: 6),
              child: Text(
                "Quran App",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Appcolor.purp4,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Text(
              textAlign: TextAlign.center,

              "learn quran everyday and \nrecite once everyday",
              style: GoogleFonts.poppins(
                color: Appcolor.purp2,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            SizedBox(height: 70),
            SizedBox(
              height: 450,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(
                    'images/mosque.png',
                    // color: Colors.white,
                    colorBlendMode: BlendMode.modulate,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: 320,
                    child: Button(clr: Appcolor.purp2, txt: "Get Started",widget: Signup(),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // body: Text("data"),
    );
  }
}
