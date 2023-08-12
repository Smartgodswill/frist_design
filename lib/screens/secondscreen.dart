import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class SeconScreen extends StatelessWidget {
  const SeconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('asset/showup.png')),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 3.0,
                      color: kactivecolors,
                      blurRadius: 10.0,
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              ' Make use happily \n   and write alot',
              style: TextStyle(
                  fontSize: 35,
                  color:kactivecolors,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
