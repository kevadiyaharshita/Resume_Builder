import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  myAppBar(context,"Education"),
    );
  }
}
