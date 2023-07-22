import 'dart:async';
import 'dart:typed_data';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
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

  FutureOr<Uint8List>generatePDF()
  {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (pw.Context contex) => pw.Center(

          child: pw.Container(
            width: double.infinity,
            height: double.infinity,
            decoration: pw.BoxDecoration(
              color: PdfColors.white,
            ),
            child: pw.Stack(
              children: [
                pw.Column(
                  children: [
                    pw.Container(
                        width: double.infinity,
                        height: 100,
                        padding: pw.EdgeInsets.fromLTRB(10, 0, 30, 0),
                        decoration: pw.BoxDecoration(
                          color: pdf_First_Blue,
                        ),
                        alignment: pw.Alignment.center,
                        child: pw.Row(
                            children: [
                              pw.Spacer(),
                              pw.Text("${Global.Name!.toUpperCase()}",style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold,color: PdfColors.white)),
                            ]
                        )
                    ),
                    pw.Divider(color: pdf_First_Blue,thickness: 3),

                    //-------------
                    pw.Container(
                        height: 725,
                        decoration: pw.BoxDecoration(
                          color: PdfColors.white,
                        ),
                      child: pw.Row(
                        children: [

                          pw.Expanded(
                            flex: 2,
                            child: pw.Container(
                              padding: pw.EdgeInsets.all(20),
                              height: 725,
                              decoration: pw.BoxDecoration(
                                color: pdf_First_Blue,
                              ),
                              // alignment: pw.Alignment.center,
                              child:pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(
                                    height: 90
                                  ),
                                 pw.Text("CONTACTS",
                                     style: pw.TextStyle(
                                       fontSize: 20,
                                       fontWeight: pw.FontWeight.bold,
                                       color: PdfColors.white,
                                       decoration: pw.TextDecoration.underline,
                                       letterSpacing: 1,
                                     )
                                 ),
                                  pw.SizedBox(height: 13),
                                  pw.Text("Email : ${Global.Email}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                  pw.SizedBox(height: 5),
                                  pw.Text("Phone : ${Global.Phone}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                  pw.SizedBox(height: 5),
                                  pw.Text("DOB : ${Global.DOB}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                  pw.SizedBox(height: 5),
                                  pw.Text("Address : ${Global.address}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),

                                  pw.SizedBox(height: 20),
                                  pw.Text("OBJECTIVE",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.white,
                                        decoration: pw.TextDecoration.underline,
                                        letterSpacing: 1,
                                      )
                                  ),
                                  pw.SizedBox(height: 13),
                                  pw.Text("- ${Global.career_objective_discription}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),

                                  pw.SizedBox(height: 20),
                                  pw.Text("LANGUAGES",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.white,
                                        decoration: pw.TextDecoration.underline,
                                        letterSpacing: 1,
                                      )
                                  ),
                                  pw.SizedBox(height: 13),
                                  ...Global.languages.map((e) => pw.Column(
                                    children: [
                                      pw.Text("- $e",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                      pw.SizedBox(height: 5),
                                    ],
                                  )).toList(),

                                  pw.SizedBox(height: 20),
                                  pw.Text("SKILLS",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.white,
                                        decoration: pw.TextDecoration.underline,
                                        letterSpacing: 1,
                                      )
                                  ),
                                  pw.SizedBox(height: 13),
                                  ...Global.technical_Skills.map((e) => pw.Column(
                                    children: [
                                      pw.Text("- ${e.text}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                      pw.SizedBox(height: 5),
                                    ],
                                  )).toList(),

                                  pw.SizedBox(height: 20),
                                  pw.Text("HOBBIES",
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.white,
                                        decoration: pw.TextDecoration.underline,
                                        letterSpacing: 1,
                                      )
                                  ),
                                  pw.SizedBox(height: 15),
                                  ...Global.interest_hobbies.map((e) => pw.Column(
                                    children: [
                                      pw.Text("- ${e.text}",style: pw.TextStyle(fontSize:16,color: pdf_Six_Blue)),
                                      pw.SizedBox(height: 5),
                                    ],
                                  )).toList(),




                                ]
                              ),
                            )
                          ),

                          pw.Expanded(
                            flex: 3,
                            child: pw.Container(
                              height: 725,
                              decoration: pw.BoxDecoration(
                                color: pdf_Six_Blue,
                              ),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [

                                  pw.SizedBox(height: 15),
                                  pw.Container(
                                    height: 40,
                                    width: 280,
                                    decoration: pw.BoxDecoration(
                                      color:pdf_First_Blue,
                                      borderRadius: pw.BorderRadius.horizontal(right: pw.Radius.circular(30)),
                                    ),
                                    child: pw.Row(
                                      children: [
                                        pw.SizedBox(width: 50),
                                        pw.Text("EDUCATION",
                                            style: pw.TextStyle(
                                          fontSize: 20,
                                          fontWeight: pw.FontWeight.bold,
                                          color: PdfColors.white,
                                          // decoration: pw.TextDecoration.underline,
                                          letterSpacing: 1,
                                        )
                                        ),

                                      ]
                                    )
                                  ),
                                  pw.SizedBox(height: 10),
                                  ...Global.course.map((e) => pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Row(
                                          children: [
                                            pw.SizedBox(width: 10),
                                            pw.Text("${e.text}",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize:16,color: pdf_First_Blue)),
                                          ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                          children: [
                                            pw.SizedBox(width: 10),
                                            pw.Text("${Global.school[Global.course.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                          ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${Global.grade[Global.course.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${Global.year[Global.course.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                            ]
                                        ),
                                        pw.Divider(color: pdf_Third_Blue,endIndent: 100),

                                      ]
                                  )).toList(),
                                  //==============================

                                  pw.Container(
                                      height: 40,
                                      width: 280,
                                      decoration: pw.BoxDecoration(
                                        color:pdf_First_Blue,
                                        borderRadius: pw.BorderRadius.horizontal(right: pw.Radius.circular(30)),
                                      ),
                                      child: pw.Row(
                                          children: [
                                            pw.SizedBox(width: 50),
                                            pw.Text("EXPERIENCES",
                                                style: pw.TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: pw.FontWeight.bold,
                                                  color: PdfColors.white,
                                                  // decoration: pw.TextDecoration.underline,
                                                  letterSpacing: 1,
                                                )
                                            ),

                                          ]
                                      )
                                  ),

                                  pw.SizedBox(height: 10),
                                  ...Global.experience_company_name.map((e) => pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${e.text}",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${Global.experience_designation[Global.experience_company_name.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Duration : ${Global.experience_startingdate[Global.experience_company_name.indexOf(e)].text} - ",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                              pw.Text("${Global.experience_endingdate[Global.experience_company_name.indexOf(e)].text}  ",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                            ]
                                        ),
                                      ]
                                  )).toList(),
                                  pw.SizedBox(height: 10),

                                  //==============================

                                  pw.Container(
                                      height: 40,
                                      width: 280,
                                      decoration: pw.BoxDecoration(
                                        color:pdf_First_Blue,
                                        borderRadius: pw.BorderRadius.horizontal(right: pw.Radius.circular(30)),
                                      ),
                                      child: pw.Row(
                                          children: [
                                            pw.SizedBox(width: 50),
                                            pw.Text("PROJECT",
                                                style: pw.TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: pw.FontWeight.bold,
                                                  color: PdfColors.white,
                                                  // decoration: pw.TextDecoration.underline,
                                                  letterSpacing: 1,
                                                )
                                            ),

                                          ]
                                      )
                                  ),
                                  pw.SizedBox(height: 10),
                                  ...Global.project_Title.map((e) => pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${e.text}",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Link : ${Global.project_Link[Global.project_Title.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),

                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Tchnologies : ${Global.project_Technologies[Global.project_Title.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("My Role : ${Global.project_Role[Global.project_Title.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),
                                      ]
                                  )).toList(),
                                  pw.SizedBox(height: 10),

                                  //============================
                                  pw.Container(
                                      height: 40,
                                      width: 280,
                                      decoration: pw.BoxDecoration(
                                        color:pdf_First_Blue,
                                        borderRadius: pw.BorderRadius.horizontal(right: pw.Radius.circular(30)),
                                      ),
                                      child: pw.Row(
                                          children: [
                                            pw.SizedBox(width: 50),
                                            pw.Text("REFERENCE",
                                                style: pw.TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: pw.FontWeight.bold,
                                                  color: PdfColors.white,
                                                  // decoration: pw.TextDecoration.underline,
                                                  letterSpacing: 1,
                                                )
                                            ),

                                          ]
                                      )
                                  ),

                                  pw.SizedBox(height: 10),
                                  ...Global.reference_name.map((e) => pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("${e.text}",style: pw.TextStyle(fontWeight:pw.FontWeight.bold,fontSize:16,color: pdf_First_Blue)),
                                            ],

                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Designation : ${Global.reference_designation[Global.reference_name.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),

                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Email : ${Global.reference_email[Global.reference_name.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),
                                        pw.SizedBox(height: 5),
                                        pw.Row(
                                            children: [
                                              pw.SizedBox(width: 10),
                                              pw.Text("Phone : ${Global.reference_phone[Global.reference_name.indexOf(e)].text}",style: pw.TextStyle(fontSize:16,color: pdf_First_Blue)),
                                            ]
                                        ),


                                      ]
                                  )).toList(),


                                ]
                              )
                            )
                          ),

                        ]
                      )
                    )
                  ],
                ),

                //==================================================
                pw.Padding(
                  // padding: pw.EdgeInsets.all(40),
                    padding: pw.EdgeInsets.fromLTRB(24.4+2, 24.4+2, 0, 0),
                    child:  pw.Container(
                        width: 182,
                        height: 182,
                        decoration: pw.BoxDecoration(
                          color: pdf_First_Blue,
                          shape: pw.BoxShape.circle,
                          border: pw.Border.all(color: PdfColors.white,width: 2),

                        )
                    )
                ),
               pw.Padding(
                 // padding: pw.EdgeInsets.all(40),
                 padding: pw.EdgeInsets.fromLTRB(30+2, 30+2, 0, 0),
                 child:  pw.Container(
                     width: 171,
                     height: 171,
                     decoration: pw.BoxDecoration(
                       color: pdf_First_Blue,
                       shape: pw.BoxShape.circle,
                       border: pw.Border.all(color: PdfColors.white,width: 2),
                       image: pw.DecorationImage(
                         image: pw.MemoryImage(
                               File(Global.image!.path).readAsBytesSync(),
                             ),
                       )
                     ),
                 )
               ),

                //===========================================
              ]
            ),

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
