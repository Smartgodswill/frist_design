// ignore_for_file: prefer_const_constructors

import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height:260,
              width:260,
              decoration: BoxDecoration(
                 color:kactivecolors,
                 borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage('asset/book1.png')),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1, 2),
                    spreadRadius: 3.0,
                    color: kactivecolors,
                    blurRadius: 10.0,)
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(' Make Your Diary\n   A BestFriend',style: TextStyle(fontSize: 35,color:kactivecolors,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}