import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class achievements extends StatefulWidget {
  const achievements({Key? key}) : super(key: key);

  @override
  State<achievements> createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {
  @override
  void dispose() {
    super.dispose();

    global.myachievmentsControllers.removeWhere((element) {
      if (element.text == "") {
        return true;
      } else {
        return false;
      }
    });

    global.myachievmentsControllers.forEach((element) {
      global.myachievments.add("");
      global.myachievments[global.myachievmentsControllers.indexOf(element)] =
          element.text;
    });

    global.myachievments.removeWhere((element) => element == "");

    if (global.myachievmentsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.myachievmentsControllers.add(TextEditingController());
      }
    }
  }

  @override
  void initState() {
    super.initState();
    if (global.myachievmentsControllers.isEmpty) {
      for (int i = 0; i < 2; i++) {
        global.myachievmentsControllers.add(TextEditingController());
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
          "Achievements",
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
                  "Enter your Achievements",
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
                  global.myachievmentsControllers.length,
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
                            global.myachievmentsControllers
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
            controller: global.myachievmentsControllers[index],
            decoration: const InputDecoration(
              hintText: "Exceeded sales 17% average",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              global.myachievmentsControllers.removeAt(index);
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
