import 'package:cardgame/providers/theme_controller.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kactivecolors,
      ),
      body: Column(
        children: [
          SafeArea(
              child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 45,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Change your App Theme',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child:ValueListenableBuilder(valueListenable: isdarkMode, builder: (context,isdark,child){
                        return Switch.adaptive(
                          activeColor: kactivecolors,
                          value: isdark?true:false, onChanged: (value){
                        setState(() {
                          isdarkMode.value=!isdarkMode.value;
                        });
                      });
                      })
                      
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
