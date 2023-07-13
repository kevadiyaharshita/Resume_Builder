import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "References"),
    );
  }
}
