import 'package:flutter/material.dart';


class Mytextfield extends StatelessWidget {
  const Mytextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                  height: 100,
                  width: 100,
                  padding: const EdgeInsets.all(20),
                   child: TextField(
                    decoration:const InputDecoration(
                      border: InputBorder.none,label: Text('Enter Text')
                    ),
                    maxLines: MediaQuery.of(context).size.height.toInt(),
                   ),
                 ),
               );
  }
}