import 'package:flutter/material.dart';
import 'package:resume_builder/utils/MyRoutes.dart';

import '../../utils/Color_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
         backgroundColor: First_Blue,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamed(MyRoutes.resumeWorkspace),
        child: Icon(Icons.add,color: First_Blue,size: 38,),
      ),
    );
  }
}
