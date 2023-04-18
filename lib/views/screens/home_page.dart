import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/icon_utils.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/theme_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Resume Builder",
              style: appBarTitleStyle,
            ),
            SizedBox(
              height: s.height * 0.07,
            ),
            Text(
              "RESUMES",
              style: appBarTitleStyle,
            ),
          ],
        ),
        centerTitle: true,
        toolbarHeight: s.height * 0.2,
        backgroundColor: Color(0xff13547A),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: s.height * 0.07,
            ),
            Image.asset(
              iconPath + "open-cardboard-box.png",
              height: 80,
              color: Color(0xff13547A),
            ),
            SizedBox(
              height: s.height * 0.02,
            ),
            Text("No Resumes \n Click + to Create new resume",
                style: TextStyle(fontSize: 18, color: Color(0xff13547A)),
                textAlign: TextAlign.center),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyRoutes.workspace);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
