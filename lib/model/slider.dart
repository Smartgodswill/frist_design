import 'package:flutter/material.dart';

import '../theme/mycolors.dart';

class MySlider extends StatelessWidget {
  final VoidCallback onedit;
  final VoidCallback ondelet;
  const MySlider({super.key,required this.ondelet,required this.onedit});

  @override
  Widget build(BuildContext context) {
    return Container(
         decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),
                          color: kactivecolors,
                           ),
                               height: 100,
                           width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                  GestureDetector(
                                    onTap:onedit,
                                    child: Icon(Icons.edit,size:35)),
                                  GestureDetector(
                                    onTap: ondelet,
                                    child: Icon(Icons.delete,size:35))
                                      ],
                                    ),
                                  
                               
                           );
  }
}