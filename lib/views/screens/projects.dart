import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class projects extends StatefulWidget {
  const projects({Key? key}) : super(key: key);

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Projects",
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
        padding: EdgeInsets.all(20),
        child: Container(
          height: s.height * 0.82,
          width: s.width,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              key: formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Titles",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(19, 84, 122, 0.7)),
                  ),
                  SizedBox(
                    height: s.height * 0.01,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    initialValue: global.projects_project_title,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Project Title!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.projects_project_title = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "eg.Resume Builder App",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  Text(
                    "Languages Knows",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(19, 84, 122, 0.7)),
                  ),
                  SizedBox(
                    height: s.height * 0.005,
                  ),
                  Container(
                    height: 30,
                    child: CheckboxListTile(
                        value: global.MyCheckboxP1,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "C Language",
                          style: TextStyle(
                            color: global.MyCheckboxP1
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            global.MyCheckboxP1 = val!;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    child: CheckboxListTile(
                        value: global.MyCheckboxP2,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "C++",
                          style: TextStyle(
                            color: global.MyCheckboxP2
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            global.MyCheckboxP2 = val!;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    child: CheckboxListTile(
                        value: global.MyCheckboxP3,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          "Flutter",
                          style: TextStyle(
                            color: global.MyCheckboxP3
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (val) {
                          setState(() {
                            global.MyCheckboxP3 = val!;
                          });
                        }),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  Text(
                    "Roles",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.01,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    initialValue: global.projects_roles,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Roles!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.projects_roles = val;
                    },
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Organize Team Member,Code Analysis",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  Text(
                    "Technologies",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.01,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    initialValue: global.projects_Technologies,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Technologies!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.projects_Technologies = val;
                    },
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "5-Programmers",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.02,
                  ),
                  Text(
                    "Project Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: s.height * 0.01,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    initialValue: global.projects_Project_Description,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Project Description!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.projects_Project_Description = val;
                    },
                    onFieldSubmitted: (val) {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();

                        ScaffoldMessenger.of(context).showSnackBar(
                          mySnackBar(
                            text: "Successfully validated !!",
                            color: Colors.green,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          mySnackBar(
                            text: "Failled to validate !!",
                            color: Colors.red,
                          ),
                        );
                      }
                    },
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Project Description",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
