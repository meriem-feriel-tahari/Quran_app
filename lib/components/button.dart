import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/Auth/cubit/login_cubit.dart';
import 'package:quran/Home/screens/home.dart';

class Button extends StatelessWidget {
  final Color clr;
  final String txt;
  final Color? clr2;
  final Widget widget;
  // final VoidCallback onTap;

  const Button({
    required this.widget,
    required this.clr,
    required this.txt,
    // required this.onTap,
    this.clr2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await context.read<LoginCubit>().login("test", "1234");
        Future.delayed(Duration(seconds: 10));
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget),
          (context) => false,
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: clr,
        ),
        child: Text(
          txt,
          style: GoogleFonts.poppins(color: clr2 ?? Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
