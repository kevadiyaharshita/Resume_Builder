import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class Interest_Hobbies extends StatefulWidget {
  const Interest_Hobbies({Key? key}) : super(key: key);

  @override
  State<Interest_Hobbies> createState() => _Interest_HobbiesState();
}

class _Interest_HobbiesState extends State<Interest_Hobbies> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myAppBar(context, "Technical Skills"),
    );
  }
}
