

import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';
class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});
    
  @override
  Widget build(BuildContext context) {
       final size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ktransparentcolor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 100,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: MyBmBcustomPainter(),
                  ),
                    Center(
                      heightFactor: 0.7,
                      child: FloatingActionButton(
                        backgroundColor: kactivecolors,
                        onPressed: (){},child: Icon(Icons.person),)),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon:const Icon(Icons.palette,size: 26)),
                        
                          IconButton(onPressed: (){}, icon:const Icon(Icons.speaker,size: 26)),
                        Container(
                          width: size.width*0.20,),
                          IconButton(onPressed: (){}, icon:const Icon(Icons.pages_rounded,size: 26,)),
                            IconButton(onPressed: (){}, icon:const Icon(Icons.email,size: 26))
                      ],
                    ),
                  )
                ],
              ),
            ))
        ],
      ),
    );
  }
}
class MyBmBcustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Paint paint= Paint()..color=Colors.white..style=PaintingStyle.fill;
   Path path=Path()..moveTo(0, 20);
   path.quadraticBezierTo(size.width* 0.20, 0,size.width*0.35,0);
   path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
   path.arcToPoint(Offset(size.width*0.60, 20,),
   radius: const Radius.circular(10.0),clockwise: false);
   path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
   path.quadraticBezierTo(size.width*0.80, 0, size.width, 20);
   path.lineTo(size.width, size.height);
   path.lineTo(0, size.height);
   canvas.drawPath(path, paint);
   canvas.drawShadow(path, kiniactivecolors, 5, true);
   path.close();
   
   
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}