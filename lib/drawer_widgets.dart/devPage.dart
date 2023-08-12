import 'package:cardgame/theme/mycolors.dart';
import 'package:flutter/material.dart';

class Devpage extends StatefulWidget {
  const Devpage({super.key});

  @override
  State<Devpage> createState() => _DevpageState();
}

class _DevpageState extends State<Devpage> {
  var myfontsize = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kactivecolors,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          myfontsize = 15.0;
                        });
                      },
                      child: Text(
                        'small text',
                        style: TextStyle(color: kactivecolors),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          myfontsize = 20.0;
                        });
                      },
                      child: Text(
                        'medium text',
                        style: TextStyle(color: kactivecolors),
                      )),
                  OutlinedButton(
                      onPressed: () {
                        setState(() {
                          myfontsize = 28.0;
                        });
                      },
                      child: Text(
                        'large text',
                        style: TextStyle(color: kactivecolors),
                      ))
                ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ' A well experience developer and highly skilled,looking forward to enhances the development of more efficent  apps on playstore and lot more, \n using programing languages like java,php,flutter,etc is my prid\nread more about dev at http:smartDev.com',
              style: TextStyle(
                fontSize: myfontsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
