import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class Technical_Skills extends StatefulWidget {
  const Technical_Skills({Key? key}) : super(key: key);

  @override
  State<Technical_Skills> createState() => _Technical_SkillsState();
}

class _Technical_SkillsState extends State<Technical_Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Technical Skills"),
    );
  }
}
