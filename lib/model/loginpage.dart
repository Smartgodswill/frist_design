// ignore_for_file: prefer_const_constructors
import 'package:cardgame/acquired/mymainPage.dart';
import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

bool obsure = true;

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [kactivecolors, kiniactivecolors]),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  'Welcome !',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: kactivecolors),
                ),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 60, 10, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: kactivecolors,
                      ),
                      hintText: 'Gmail',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color:kactivecolors))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                child: TextFormField(
                  obscureText: obsure,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obsure = !obsure;
                            });
                          },
                          child: Icon(
                            obsure ? Icons.visibility_off : Icons.visibility,
                            color:kactivecolors,
                          )),
                      hintText: 'password',
                      hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kactivecolors))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Forgotten password',
                      style:
                          TextStyle(color:kForgottenpasswordcolor),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  GestureDetector(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MyMainPage();
                   }));
                  } ,
                  child: Container(
                      decoration: BoxDecoration(
                          color: kactivecolors,
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: 100,
                      child: Center(
                          child: Text(
                        'Sign Up',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                ),
                ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'or',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Log In',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
