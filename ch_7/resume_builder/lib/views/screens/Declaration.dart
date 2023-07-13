import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, 'Declaration'),
    );
  }
}
