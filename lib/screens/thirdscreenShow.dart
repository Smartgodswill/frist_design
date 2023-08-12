import 'package:flutter/material.dart';

import '../theme/mycolors.dart';

class Thirdscreenshow extends StatefulWidget {
  final VoidCallback ontap;

  final String text;

  final colors;

  const Thirdscreenshow(
      {super.key,
      required this.colors,
      required this.ontap,
      required this.text});

  @override
  State<Thirdscreenshow> createState() => _ThirdscreenshowState();
}

class _ThirdscreenshowState extends State<Thirdscreenshow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.ontap,
      child: Container(
        decoration: BoxDecoration(
            color:kbegincolors,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(color: widget.colors, fontWeight: FontWeight.bold),
        )),
        height: 50,
        width: 100,
      ),
    );
  }
}
