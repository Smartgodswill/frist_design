import 'package:cardgame/model/loginpage.dart';
import 'package:cardgame/screens/thirdscreenShow.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class thirdScreen extends StatefulWidget {
  const thirdScreen({super.key});

  @override
  State<thirdScreen> createState() => _thirdScreenState();
}

class _thirdScreenState extends State<thirdScreen> {
  @override
  Widget build(BuildContext context) {
    void login(){
      Navigator.push(context, MaterialPageRoute(builder: (context){
          return  LogInPage();
      }));
    }
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient
         
         (begin: Alignment.topLeft,
         
         end: Alignment.bottomRight,
          colors: [
           kactivecolors,
          kiniactivecolors,
         
         ]) ,
        
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height:260,
              width:260,
              decoration: BoxDecoration(
                 
                 borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: AssetImage('asset/third.png')),
                boxShadow: [
                  BoxShadow(
                    offset:const  Offset(-5,2),
                    spreadRadius: 01.0,
                    color: kiniactivecolors,
                    blurRadius: 5.0,)
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(' Make Your Diary active\n   life is easier writing\n   and understanding',style: TextStyle(fontSize: 28,color:kactivecolors,fontWeight: FontWeight.w800),),
          ),
         Thirdscreenshow(colors: kiniactivecolors, ontap: login, text: 'Get started')
        ],
      ),
      )
    );
  }
}