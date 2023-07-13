import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, "Achievements"),
    );
  }
}
