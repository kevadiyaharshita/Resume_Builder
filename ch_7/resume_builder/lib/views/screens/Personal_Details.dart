import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../components/myAppBar.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  myAppBar(context,"Personal Details"),
    );
  }
}
