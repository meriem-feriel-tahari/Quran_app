import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/Auth/cubit/login_cubit.dart';
import 'package:quran/Home/screens/home.dart';

import 'package:quran/components/button.dart';
import 'package:quran/const/colors.dart';
import 'package:quran/Auth/screens/signup/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.background,
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Stack(
            children: [
              state is LoginLoading
                  ? Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: LinearProgressIndicator(minHeight: 4),
                    )
                  : Positioned.fill(
                      top: 250,
                      right: 45,
                      child: Image.asset("images/mosque 1.png"),
                    ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    // ignore: deprecated_member_use
                    color: Appcolor.purp4.withOpacity(
                      0.2,
                    ), // optional dark overlay
                  ),
                ),
              ),
              Positioned.fill(
                top: 112,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Quran App",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Appcolor.purp4,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,

                        "Asalam aleikum",
                        style: GoogleFonts.poppins(
                          color: Appcolor.purp3,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.only(right: 260),
                        child: Text(
                          "Sign In",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.poppins(
                            color: Appcolor.purp3,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      textfiled("Email"),
                      SizedBox(height: 25),
                      textfiled("Password"),
                      SizedBox(height: 40),
                      Button(
                        clr: Color(0xFFE5B6F2).withOpacity(0.2),
                        txt: "Sign in",
                        clr2: Appcolor.purp1,
                        widget: Home(),
                        // onTap: () {
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => Signup()),
                        //   );
                        // },
                      ),
                      SizedBox(height: 40),

                      Text(
                        "Or",
                        style: GoogleFonts.poppins(color: Appcolor.purp1),
                      ),
                      SizedBox(height: 20),
                      Row(
                        spacing: 35,
                        children: [
                          SizedBox(width: 90),
                          GestureDetector(
                            child: Image.asset("images/google.png"),
                          ),
                          GestureDetector(child: Image.asset("images/fb.png")),
                          GestureDetector(
                            child: Image.asset("images/apple.png"),
                          ),
                        ],
                      ),
                      // SizedBox(height: 10),
                      GestureDetector(
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Don't have an account ? ",
                                style: GoogleFonts.poppins(
                                  color: Appcolor.purp1,
                                ),
                              ),
                              TextSpan(
                                text: "Register here ",
                                style: GoogleFonts.poppins(
                                  color: Color(0xFF0E18F6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget textfiled(String hint) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: TextField(
      decoration: InputDecoration(
        suffixIcon: hint == "Password"
            ? Icon(Icons.visibility, color: Appcolor.purp1)
            : null,
        hintText: hint,
        filled: true,
        hintStyle: GoogleFonts.poppins(color: Appcolor.purp1),
        // ignore: deprecated_member_use
        fillColor: Color(0xFFE5B6F2).withOpacity(0.2),
        disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    ),
  );
}
