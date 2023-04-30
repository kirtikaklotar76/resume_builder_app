import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:resume_builder_app/modals/globalVar.dart';
import '../../utils/theme_utils.dart';
import '../components/Mybackicon.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({Key? key}) : super(key: key);

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  pw.Document pdf = pw.Document();

  generatePdf() async {
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) => pw.Container(
          height: double.infinity,
          width: double.infinity,
          alignment: pw.Alignment.center,
          child: pw.Row(
            children: [
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  color: PdfColor.fromInt(0xff13547A),
                  child: pw.Padding(
                    padding: pw.EdgeInsets.all(15),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(
                          height: 15,
                        ),
                        pw.Center(
                          child: pw.Container(
                            height: 125,
                            width: 125,
                            decoration: pw.BoxDecoration(
                              shape: pw.BoxShape.circle,
                              image: pw.DecorationImage(
                                image: pw.MemoryImage(
                                  File(global.image!.path).readAsBytesSync(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(
                          height: 25,
                        ),
                        pw.Text(
                          "Date of Birth ",
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 14,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Text(
                          global.dob!,
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 12,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          height: 25,
                        ),
                        pw.Text(
                          "Marital Status ",
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 14,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Text(
                          global.maritalStatus!,
                          style: pw.TextStyle(
                            color: PdfColors.white,
                            fontSize: 12,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pw.Expanded(
                flex: 2,
                child: pw.Padding(
                  padding: pw.EdgeInsets.all(16),
                  child: pw.Container(
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Text(
                          global.name!,
                          style: pw.TextStyle(
                            fontSize: 22,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Row(
                          children: [
                            pw.Text(
                              "Email :",
                              style: pw.TextStyle(
                                fontSize: 14,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.SizedBox(
                              width: 5,
                            ),
                            pw.Text(
                              global.email!,
                              style: pw.TextStyle(
                                fontSize: 12,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Row(
                          children: [
                            pw.Text(
                              "Contact No :",
                              style: pw.TextStyle(
                                fontSize: 14,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.SizedBox(
                              width: 5,
                            ),
                            pw.Text(
                              global.contactNo!.toString(),
                              style: pw.TextStyle(
                                fontSize: 12,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.SizedBox(
                          height: 5,
                        ),
                        pw.Row(
                          children: [
                            pw.Text(
                              "Address :",
                              style: pw.TextStyle(
                                fontSize: 14,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.SizedBox(
                              width: 5,
                            ),
                            pw.Text(
                              "${global.a1},${global.a2},\n${global.a3}",
                              style: pw.TextStyle(
                                fontSize: 12,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        pw.Divider(color: PdfColors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    generatePdf();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "PDF",
          style: appBarTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff13547A),
        elevation: 0,
      ),
      body: PdfPreview(
        build: (format) => pdf.save(),
      ),
    );
  }
}
