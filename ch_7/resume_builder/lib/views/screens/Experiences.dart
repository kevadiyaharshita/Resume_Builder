import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Experiences"),
    );
  }
}
