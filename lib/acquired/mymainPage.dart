// ignore_for_file: prefer_const_constructors, avoid_types_as_parameter_names
import 'package:cardgame/acquired/hinitPage.dart';
import 'package:cardgame/acquired/myalertbox.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:cardgame/model/drawer_design.dart';

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key});
  @override
  State<MyMainPage> createState() => _MyMainPageState();
}
class _MyMainPageState extends State<MyMainPage> {
  List itemlist = [
    ['Writeup And Addup', false],
    ['How Was Your Day', false]
  ];
    var generalcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
         void editExistingHabit(int index) {
    setState(() {
      itemlist[index][0]= generalcontroller.text;
    });
    Navigator.of(context).pop();
    generalcontroller.clear();
    
  }


    final Size = MediaQuery.of(context).size;

  void onedithabit(int index) {
    showDialog(
        context: context,
        builder: (context) {
          return Myalertbox(
           onsave: () => editExistingHabit(index), mycontroller:  generalcontroller);
        });
  }

  void ondeletehabit(int index) {
    setState(() {
      itemlist.removeAt(index);
    });
  }

    void onsavetext() {
      setState(() {
        itemlist.add([ generalcontroller.text, false]);
       

      });  
     Navigator.pop(context);
     
      
    }
    void mybuttomsheet(){
     showModalBottomSheet(context: context, builder: (context){
                  return SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                         color: kiniactivecolors,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.all(3),
                      height: 300,
                      width: Size.width,
                     
                    ),
                  );
              });
    }
    return Scaffold(
      backgroundColor: kkactivecolors,
      body: Container(
        width: Size.width * 2,
        height: Size.width * 2.5,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [kactivecolors, kkactivecolors])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'MyDiary',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w900,
                            color: kiniactivecolors),
                      ),
                    ),
                    Icon(
                      Icons.draw_rounded,
                      size: 35,
                      color: kiniactivecolors,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: Size.width * 1.3,
                  child: ListView.builder(
                      itemCount: itemlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: HinitPage(
                              containersTexts: itemlist[index][0],
                              ondelete: () => ondeletehabit(index),
                              onedit: () => onedithabit(index),
                            ));
                      }),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: SafeArea(child: DrawerDesign()),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kactivecolors,
        actions:  [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
             mybuttomsheet();
              },
              child: Icon(Icons.share)),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Myalertbox(
                onsave: onsavetext,
                mycontroller: generalcontroller,
              );
            }));
          },
          backgroundColor: kiniactivecolors,
          child: Icon(
            Icons.add,
            size: 35,
            color: kblack,
          ),
        ),
      ),
    );
  }
}
