import 'package:flutter/material.dart';
import 'package:resume_builder_app/modals/globalVar.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import '../components/my_snackbar.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Declaration",
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
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Text(
                        "Declaration",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          color: Color.fromRGBO(19, 84, 122, 0.7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Switch(
                      value: global.isDeclared,
                      onChanged: (val) {
                        setState(() {
                          global.isDeclared = val;
                        });
                      },
                    ),
                  ],
                ),
                (global.isDeclared)
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Form(
                            key: formkey,
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment(-1, 0),
                                  child: Icon(
                                    Icons.radar,
                                    size: 50,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.text,
                                  initialValue: global.Declaration_Description,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter The Description!!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    global.Declaration_Description = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    hintText: 'Description',
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 40,
                                          ),
                                          SizedBox(
                                            height: s.height * 0.05,
                                            width: s.width * 0.35,
                                            child: TextFormField(
                                              textInputAction:
                                                  TextInputAction.next,
                                              keyboardType: TextInputType.text,
                                              initialValue:
                                                  global.Declaration_date,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Please Enter The Date!!";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (val) {
                                                global.Declaration_date = val;
                                              },
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                hintText: 'DD/MM/YYYY',
                                                hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Place(Interview venue/city)",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            height: s.height * 0.05,
                                            width: s.width * 0.30,
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              initialValue:
                                                  global.Declaration_place,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Please Enter The Place!!";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onSaved: (val) {
                                                global.Declaration_place = val;
                                              },
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                hintText: 'Eg.Surat',
                                                hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      ContinuousRectangleBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.zero),
                                      ),
                                    ),
                                    elevation: MaterialStatePropertyAll(0),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (formkey.currentState!.validate()) {
                                        formkey.currentState!.save();

                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          mySnackBar(
                                            text: "Successfully validated !!",
                                            color: Colors.green,
                                          ),
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          mySnackBar(
                                            text: "Failled to validate !!",
                                            color: Colors.red,
                                          ),
                                        );
                                      }
                                    });
                                  },
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
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
