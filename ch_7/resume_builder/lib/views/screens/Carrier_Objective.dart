import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../components/myAppBar.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  myAppBar(context,"Carrier Objective"),
    );
  }
}
