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
          child: pw.Column(
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              pw.Container(
                height: 250,
                width: 250,
                decoration: pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                  image: pw.DecorationImage(
                    image: pw.MemoryImage(
                      File(global.image!.path).readAsBytesSync(),
                    ),
                  ),
                ),
              ),
              pw.SizedBox(
                height: 20,
              ),
              pw.SizedBox(
                width: 300,
                child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    pw.Text(
                      "Name :",
                      style: pw.TextStyle(
                        fontSize: 28,
                        color: PdfColors.red,
                      ),
                    ),
                    pw.Text(
                      global.name!,
                      style: pw.TextStyle(
                        fontSize: 28,
                        color: PdfColors.red,
                      ),
                    ),
                  ],
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
