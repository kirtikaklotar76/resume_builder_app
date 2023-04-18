import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/views/screens/contact_info.dart';
import 'package:resume_builder_app/views/screens/home_page.dart';
import 'package:resume_builder_app/views/screens/personal_details.dart';
import 'package:resume_builder_app/views/screens/resume_workspace.dart';

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
        MyRoutes.buildOptions[0].route: (context) => const contact_info(),
        MyRoutes.buildOptions[2].route: (context) => const personal_details(),
      },
    );
  }
}
