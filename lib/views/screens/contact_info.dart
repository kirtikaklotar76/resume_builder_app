import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder_app/modals/globalVar.dart';
import 'package:resume_builder_app/utils/icon_utils.dart';

import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  int index = 0;
  ImagePicker picker = ImagePicker();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double iconSize = size.height * 0.05;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Contact info",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff13547A),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Contact",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: index == 0 ? 4 : 0,
                              color: Colors.amberAccent),
                        ),
                        color: Color(0xff13547A),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Photo",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: index == 1 ? 3 : 0,
                              color: Colors.amberAccent),
                        ),
                        color: Color(0xff13547A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: IndexedStack(
                index: index,
                children: [
                  Container(
                    padding: const EdgeInsets.all(18),
                    color: Colors.white,
                    child: Form(
                      key: formkey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    iconPath + "user.png",
                                    height: iconSize,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    initialValue: global.name,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter name!!";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      global.name = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Enter the name",
                                      labelText: "Name",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    iconPath + "email.png",
                                    height: iconSize,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    initialValue: global.email,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Valid Email Id!!";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      global.email = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Enter the email",
                                      labelText: "Email",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    iconPath + "phone.png",
                                    height: iconSize,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    maxLength: 10,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.phone,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    initialValue: (global.contactNo == null)
                                        ? null
                                        : global.contactNo.toString(),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Mobile Number!!";
                                      } else if (val!.length < 10) {
                                        return "Contact number must have 10 digits!!";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      global.contactNo = int.parse(val!);
                                    },
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      hintText: "Enter the phone number",
                                      prefixText: "+91 ",
                                      labelText: "Phone",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    iconPath + "add.png",
                                    height: iconSize,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    initialValue: global.a1,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please Enter Address!!";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      global.a1 = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      labelText: "Address (Street,Building No)",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    initialValue: global.a2,
                                    onSaved: (val) {
                                      global.a2 = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      labelText: "Address Line 2",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Spacer(),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 8,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    initialValue: global.a2,
                                    onSaved: (val) {
                                      global.a2 = val;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      labelText: "Address Line 3",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text("photo"),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
