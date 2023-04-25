import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/routes_utils.dart';
import 'package:resume_builder_app/utils/theme_utils.dart';

class resume_workspace extends StatefulWidget {
  const resume_workspace({Key? key}) : super(key: key);

  @override
  State<resume_workspace> createState() => _resume_workspaceState();
}

class _resume_workspaceState extends State<resume_workspace> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Resume Workspace",
          style: appBarTitleStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.pdfPage);
            },
            icon: const Icon(
              Icons.picture_as_pdf,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xff13547A),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: s.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
                color: Color(0xff13547A),
              ),
              alignment: Alignment.center,
              child: Text(
                "Build Options",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: MyRoutes.buildOptions
                      .map(
                        (e) => Container(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Image.asset(
                                e.icon,
                                height: s.height * 0.06,
                                color: Color.fromRGBO(19, 84, 122, 0.7),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                e.name,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed(e.route);
                                },
                                icon: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
