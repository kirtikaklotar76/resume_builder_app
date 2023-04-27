import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class personal_details extends StatefulWidget {
  const personal_details({Key? key}) : super(key: key);

  @override
  State<personal_details> createState() => _personal_detailsState();
}

class _personal_detailsState extends State<personal_details> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Personal Details",
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
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "DOB",
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
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    initialValue: global.dob,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The DOB!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.dob = val;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      hintText: 'DD/MM/YYYY',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Marital Status",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  Container(
                    height: s.height * 0.03,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      value: "Single",
                      title: Text(
                        "Single",
                        style: TextStyle(
                          color: global.maritalStatus == "Single"
                              ? Color.fromRGBO(19, 84, 122, 0.7)
                              : Colors.grey,
                        ),
                      ),
                      groupValue: global.maritalStatus,
                      onChanged: (val) {
                        setState(() {
                          global.maritalStatus = val;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: s.height * 0.03,
                    child: RadioListTile(
                      contentPadding: EdgeInsets.zero,
                      value: "Married",
                      title: Text(
                        "Married",
                        style: TextStyle(
                          color: global.maritalStatus == "Married"
                              ? Color.fromRGBO(19, 84, 122, 0.7)
                              : Colors.grey,
                        ),
                      ),
                      groupValue: global.maritalStatus,
                      onChanged: (val) {
                        setState(() {
                          global.maritalStatus = val;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Languages Known",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(19, 84, 122, 0.7),
                    ),
                  ),
                  Container(
                    height: s.height * 0.035,
                    child: CheckboxListTile(
                        value: global.isChecked1,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "English",
                          style: TextStyle(
                            color: global.isChecked2
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            global.isChecked1 = val!;
                          });
                        }),
                  ),
                  Container(
                    height: s.height * 0.035,
                    child: CheckboxListTile(
                        value: global.isChecked2,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Hindi",
                          style: TextStyle(
                            color: global.isChecked2
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            global.isChecked2 = val!;
                          });
                        }),
                  ),
                  Container(
                    height: s.height * 0.03,
                    child: CheckboxListTile(
                        value: global.isChecked3,
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Text(
                          "Gujarati",
                          style: TextStyle(
                            color: global.isChecked3
                                ? Color.fromRGBO(19, 84, 122, 0.7)
                                : Colors.grey,
                          ),
                        ),
                        onChanged: (val) {
                          setState(() {
                            global.isChecked3 = val!;
                          });
                        }),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Nationality",
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
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    initialValue: global.nationality,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter The Nationality!!";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (val) {
                      global.nationality = val;
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
                      hintText: 'Indian',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: s.height * 0.04,
                        width: s.width * 0.25,
                        color: Color.fromRGBO(19, 84, 122, 0.7),
                        child: Text(
                          "SAVE",
                          style: TextStyle(color: Colors.white),
                        ),
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
