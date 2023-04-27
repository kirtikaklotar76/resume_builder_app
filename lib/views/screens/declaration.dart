import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Declaration",
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
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Text(
                      "Declaration",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Color.fromRGBO(19, 84, 122, 0.7),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Switch(
                    value: global.isDeclared,
                    onChanged: (val) {
                      setState(() {
                        global.isDeclared = val;
                      });
                    },
                  ),
                ],
              ),
              (global.isDeclared)
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("hiii"),
                      ],
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
