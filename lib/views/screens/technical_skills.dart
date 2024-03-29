import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class technicalskills extends StatefulWidget {
  const technicalskills({Key? key}) : super(key: key);

  @override
  State<technicalskills> createState() => _technicalskillsState();
}

class _technicalskillsState extends State<technicalskills> {
  @override
  void dispose() {
    super.dispose();

    global.mySkillsControllers.removeWhere((element) {
      if (element.text == "") {
        return true;
      } else {
        return false;
      }
    });

    global.mySkillsControllers.forEach((element) {
      global.mySkills.add("");
      global.mySkills[global.mySkillsControllers.indexOf(element)] =
          element.text;
    });

    global.mySkills.removeWhere((element) => element == "");

    if (global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (global.mySkillsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.mySkillsControllers.add(TextEditingController());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
        padding: const EdgeInsets.all(18),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enter your skills",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Color.fromRGBO(19, 84, 122, 0.7),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ...List.generate(
                  global.mySkillsControllers.length,
                  (index) => MySkillTile(index: index),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            global.mySkillsControllers
                                .add(TextEditingController());
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Widget MySkillTile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: global.mySkillsControllers[index],
            decoration: const InputDecoration(
              hintText: "C Programming, Web",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              global.mySkillsControllers.removeAt(index);
            });
          },
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ],
    );
  }
}
