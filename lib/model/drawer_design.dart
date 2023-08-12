import 'package:cardgame/drawer_widgets.dart/devPage.dart';
import 'package:cardgame/drawer_widgets.dart/drawerTheme.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class DrawerDesign extends StatelessWidget {
  const DrawerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kiniactivecolors,
    child: Column(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient:drawergradient
               
              ),
              accountName:Text('Smart',style: TextStyle(color: kblack,fontSize: 19), ), accountEmail: Text('pjAlext015@gmail.com',style:  TextStyle(color: kblack,fontSize: 19),)),
          )),
      
         ExpansionTile(
            backgroundColor: Colors.transparent,
            title: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DrawerWidget();
                }));
              },
              child: Text('Theme',style: TextStyle(color: kblack,fontSize: 19),)),trailing: Icon(Icons.mode),),
     
        ExpansionTile(  backgroundColor: ktransparentcolor,
          title:Text('About Page',style:TextStyle(color: kblack,fontSize: 19),),trailing: Icon(Icons.pages  ),)
     ,ExpansionTile(  backgroundColor: ktransparentcolor,
      title:GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
              return  Devpage();
          }));
        },
        child: Text('About Dev',style:TextStyle(color: kblack,fontSize: 19),)),trailing: Icon(Icons.person  ),)
    
      ] ),
      
    );
  }
}