import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({Key? key}) : super(key: key);

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

class _carrier_objectiveState extends State<carrier_objective> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Carrier Objective",
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Carrier Objective",
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
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            initialValue: global.Carrier_Objective_des,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The Description!!";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              global.Carrier_Objective_des = val;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Description",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            maxLines: 5,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Designation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(19, 84, 122, 0.7),
                            ),
                          ),
                          Text(
                            "Experienced Candidate",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(19, 84, 122, 0.7),
                            ),
                          ),
                          SizedBox(
                            height: s.height * 0.01,
                          ),
                          TextFormField(
                            textAlign: TextAlign.start,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.text,
                            initialValue:
                                global.Carrier_Objective_Current_Designation,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter The Current Designation!!";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (val) {
                              global.Carrier_Objective_Current_Designation =
                                  val;
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
                              border: OutlineInputBorder(),
                              hintText: "ex.Software Engineer",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
