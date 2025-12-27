import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Auth/cubit/login_cubit.dart';
import 'package:quran/splash/splash.dart';

void main() {
  runApp(
    MultiBlocProvider(
    providers: 
    [
      BlocProvider(
        create: (context) => LoginCubit(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstApp());
  }
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Spalsh();
  }
}
