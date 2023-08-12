// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class Myalertbox extends StatefulWidget {
  final VoidCallback onsave;
  final mycontroller;
  const Myalertbox(
      {super.key, required this.onsave, required this.mycontroller});

  @override
  State<Myalertbox> createState() => _MyalertboxState();
}

class _MyalertboxState extends State<Myalertbox> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kactivecolors,
        actions: [
          OutlinedButton(
              onPressed: widget.onsave,
              child: Text(
                'Save',
                style: TextStyle(
                    color: kmywhitecolor, fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: size.width * 2,
                  decoration: BoxDecoration(gradient: myalertboxgradient),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.width * 1,
                          width: size.width,
                          color: ktransparentcolor,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TextField(
                              cursorColor: kactivecolors,
                              minLines: 1,
                              maxLines:
                                  MediaQuery.of(context).size.height.toInt(),
                              controller: widget.mycontroller,
                              decoration: InputDecoration(
                              
                                  border: InputBorder.none,
                                  hintText: 'Enter Text',
                                  hintStyle: TextStyle(
                                      color: kblack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
