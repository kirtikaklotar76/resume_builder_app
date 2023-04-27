import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class experience extends StatefulWidget {
  const experience({Key? key}) : super(key: key);

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Experience",
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
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.next,
                    initialValue: global.Experience_com_name,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Company Name!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Experience_com_name = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "KK Enterprise etc.",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "School/Collage/Institute",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    initialValue: global.Experience_school,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The School/Collage/Institute!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Experience_school = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Quality Test Engineer",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Roles (Optional)",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    textAlign: TextAlign.start,
                    initialValue: global.Experience_roles,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Roles!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.Experience_roles = val;
                    },
                    decoration: InputDecoration(
                      hintText:
                          "Working with team member to come up with new concepts and product analysis...",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Employed Status",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Radio(
                          value: "Previously Employed",
                          groupValue: global.Experience_emp,
                          onChanged: (val) {
                            setState(() {
                              myindex = 0;
                              global.Experience_emp = val;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Previously Employed",
                        style: TextStyle(fontSize: 9.8),
                      ),
                      Transform.scale(
                        scale: 0.7,
                        child: Radio(
                          value: "Currently Employed",
                          groupValue: global.Experience_emp,
                          onChanged: (val) {
                            setState(() {
                              myindex = 1;
                              global.Experience_emp = val;
                            });
                          },
                        ),
                      ),
                      Text("Currently Employed",
                          style: TextStyle(fontSize: 9.8)),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  IndexedStack(
                    index: myindex,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(19, 84, 122, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: s.height * 0.01,
                              ),
                              Container(
                                height: s.height * 0.075,
                                width: s.width * 0.3,
                                child: TextFormField(
                                  initialValue: global.Experience_date_joined,
                                  keyboardType: TextInputType.text,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter The Date of Joined!!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    global.Experience_date_joined = val;
                                  },
                                  textAlign: TextAlign.start,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: s.width * 0.2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date Exit",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(19, 84, 122, 0.7),
                                ),
                              ),
                              SizedBox(
                                height: s.height * 0.01,
                              ),
                              Container(
                                height: s.height * 0.075,
                                width: s.width * 0.3,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  initialValue: global.Experience_date_exit,
                                  keyboardType: TextInputType.text,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter The Date of Exit!!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    global.Experience_date_exit = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "DD/MM/YYYY",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date Joined",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(19, 84, 122, 0.7),
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.01,
                          ),
                          Container(
                            height: s.height * 0.075,
                            width: s.width * 0.3,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.text,
                              initialValue:
                                  global.Experience_current_emp_date_exit,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Please Enter The Date of Joined!!";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (val) {
                                global.Experience_current_emp_date_exit = val;
                              },
                              onFieldSubmitted: (val) {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();

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
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "DD/MM/YYYY",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.height * 0.03,
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
