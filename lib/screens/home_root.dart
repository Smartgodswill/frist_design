
// ignore_for_file: sort_child_properties_last

import 'package:cardgame/screens/fristscreen.dart';
import 'package:cardgame/screens/secondscreen.dart';
import 'package:cardgame/screens/thirdscreen.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';


 List<Widget> screens= const[
  FirstScreen(),
  SeconScreen(),
  thirdScreen(),

 ];
class HomeRoot extends StatefulWidget {
  const HomeRoot({super.key});

  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot>with SingleTickerProviderStateMixin {
  late final TabController controller;
  int index=0;
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TabController(length: screens.length, vsync: this,initialIndex:index, );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(children: screens,controller: controller,),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: kactivecolors,
              selectedColor:kactivecolors,
            ))
        ],
      )
    );
  }
}