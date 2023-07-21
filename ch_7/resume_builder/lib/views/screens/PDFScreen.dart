import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../globals/Global_class.dart';

class PDFScreen extends StatefulWidget {
  const PDFScreen({Key? key}) : super(key: key);

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {

  generatePDF()
  {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context contex) => pw.Center(
          child: pw.Column(
            children: [
              pw.Text(
                "Name:${Global.Name}",
                style: const pw.TextStyle(
                  fontSize: 26,
                )
              )
            ]
          )
        )
      )
    );
    return pdf.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "PDF"),
      body: PdfPreview(
        build: (format) => generatePDF(),
      ),
    );
  }
}
