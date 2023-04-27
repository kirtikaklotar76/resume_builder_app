import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class references extends StatefulWidget {
  const references({Key? key}) : super(key: key);

  @override
  State<references> createState() => _referencesState();
}

class _referencesState extends State<references> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "References",
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
        padding: const EdgeInsets.all(20),
        child: Container(
          width: s.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Refrences Name",
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
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      initialValue: global.Refrences_name,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter The Refrences Name!!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        global.Refrences_name = val;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Mr.Jay Gondaliya",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: s.height * 0.03,
                    ),
                    Text(
                      "Designation",
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
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      initialValue: global.Refrences_designation,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter The Designation!!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        global.Refrences_designation = val;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Marketing Manager,ID-342332",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: s.height * 0.03,
                    ),
                    Text(
                      "Oraganization/Institute",
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
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.text,
                      initialValue: global.Refrences_institute,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please Enter The Oraganization/Institute!!";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (val) {
                        global.Refrences_institute = val;
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
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Red and White",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
