import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/views/screens/achievements.dart';
import 'package:resume_builder_app/views/screens/carrier_objective.dart';
import 'package:resume_builder_app/views/screens/contact_info.dart';
import 'package:resume_builder_app/views/screens/declaration.dart';
import 'package:resume_builder_app/views/screens/education.dart';
import 'package:resume_builder_app/views/screens/experience.dart';
import 'package:resume_builder_app/views/screens/home_page.dart';
import 'package:resume_builder_app/views/screens/interest_hobbies.dart';
import 'package:resume_builder_app/views/screens/pdfPage.dart';
import 'package:resume_builder_app/views/screens/personal_details.dart';
import 'package:resume_builder_app/views/screens/projects.dart';
import 'package:resume_builder_app/views/screens/references.dart';
import 'package:resume_builder_app/views/screens/resume_workspace.dart';
import 'package:resume_builder_app/views/screens/technical_skills.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Color(0xff13547A),
      ),
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.workspace: (context) => const resume_workspace(),
        MyRoutes.pdfPage: (context) => const pdf_page(),
        MyRoutes.buildOptions[0].route: (context) => const contact_info(),
        MyRoutes.buildOptions[1].route: (context) => const carrier_objective(),
        MyRoutes.buildOptions[2].route: (context) => const personal_details(),
        MyRoutes.buildOptions[3].route: (context) => const education(),
        MyRoutes.buildOptions[4].route: (context) => const experience(),
        MyRoutes.buildOptions[5].route: (context) => const technicalskills(),
        MyRoutes.buildOptions[6].route: (context) => const interest_hobbies(),
        MyRoutes.buildOptions[7].route: (context) => const projects(),
        MyRoutes.buildOptions[8].route: (context) => const achievements(),
        MyRoutes.buildOptions[9].route: (context) => const references(),
        MyRoutes.buildOptions[10].route: (context) => const declaration(),
      },
    );
  }
}
