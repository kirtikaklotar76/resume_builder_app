import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class technicalskills extends StatefulWidget {
  const technicalskills({Key? key}) : super(key: key);

  @override
  State<technicalskills> createState() => _technicalskillsState();
}

class _technicalskillsState extends State<technicalskills> {
  List<String> MyTextfild = [];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Technical Skills",
          style: appBarTitleStyle,
        ),
        toolbarHeight: 130,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff13547A),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Enter your skills",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ...MyTextfild.map(
                (e) => IndexedStack(
                  index: index,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "C Programming, Web Technical",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              MyTextfild.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ],
                ),
              ).toList(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          MyTextfild.add("");
                        });
                      },
                      child: Icon(
                        CupertinoIcons.plus,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
