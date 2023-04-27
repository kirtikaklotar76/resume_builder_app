import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Education",
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
          width: s.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Course/Degree",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    initialValue: global.Education_Course,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Course!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Education_Course = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: 'B.Tech Information Technology',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "School/College/Institute",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    initialValue: global.Education_School,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Institute!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Education_School = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: 'Bhagvan Mahavir University',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "School/College/Institute",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    initialValue: global.Education_Per,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Percentage!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Education_Per = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: '70% (or) 7.0 CGPA',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Year of Pass",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    initialValue: global.Education_Year,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Passing year!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Education_Year = val;
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
                            text: "Failed to validate !!",
                            color: Colors.red,
                          ),
                        );
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: '2019',
                      hintStyle: TextStyle(color: Colors.grey),
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
