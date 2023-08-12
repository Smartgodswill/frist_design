// ignore_for_file: unrelated_type_equality_checks

import 'package:cardgame/providers/theme_controller.dart';
import 'package:cardgame/screens/home_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmartApp extends StatelessWidget {
  const SmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemUiMode.immersive;
    return  ValueListenableBuilder(valueListenable: isdarkMode, builder: (context,isdark,child){
      return MaterialApp(
        theme: ThemeData(
          brightness:isdark?Brightness.light:Brightness.dark,
        
        ),
            debugShowCheckedModeBanner: false,
            home: HomeRoot(),
          );
    });
      }
}
