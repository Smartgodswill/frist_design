// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../theme/mycolors.dart';

class HinitPage extends StatefulWidget {
  final VoidCallback onedit;
  final VoidCallback ondelete;
  final containersTexts;
  const HinitPage(
      {super.key,
      required this.containersTexts,
      required this.ondelete,
      required this.onedit});

  @override
  State<HinitPage> createState() => _HinitPageState();
}

class _HinitPageState extends State<HinitPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: kiniactivecolors, borderRadius: BorderRadius.circular(15)),
        height: 100,
        width: 100,
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 100,
                    width: 250,
                    child: Center(
                      child: Text(
                        widget.containersTexts,
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(color: kactivecolors, gradient: gradient),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(onTap: widget.onedit, child: Icon(Icons.edit,shadows: [
                      
                    ],)),
                    GestureDetector(
                        onTap: widget.ondelete, child: Icon(Icons.delete))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
