import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class interest_hobbies extends StatefulWidget {
  const interest_hobbies({Key? key}) : super(key: key);

  @override
  State<interest_hobbies> createState() => _interest_hobbiesState();
}

class _interest_hobbiesState extends State<interest_hobbies> {
  @override
  void dispose() {
    super.dispose();

    global.myHobbiesControllers.removeWhere((element) {
      if (element.text == "") {
        return true;
      } else {
        return false;
      }
    });

    global.myHobbiesControllers.forEach((element) {
      global.myHobbies.add("");
      global.myHobbies[global.myHobbiesControllers.indexOf(element)] =
          element.text;
    });

    global.myHobbies.removeWhere((element) => element == "");

    if (global.myHobbiesControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.myHobbiesControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (global.myHobbiesControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.myHobbiesControllers.add(TextEditingController());
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
          "Interest/Hobbies",
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
                  "Enter your Interest/Hobbies",
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
                  global.myHobbiesControllers.length,
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
                            global.myHobbiesControllers
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
            controller: global.myHobbiesControllers[index],
            decoration: const InputDecoration(
              hintText: "Reading book,etc..",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              global.myHobbiesControllers.removeAt(index);
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
