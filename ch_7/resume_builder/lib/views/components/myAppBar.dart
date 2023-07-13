import 'package:flutter/material.dart';

import '../../utils/Color_utils.dart';
import 'myBackButton.dart';

  PreferredSizeWidget myAppBar(BuildContext context,String title) {
        return AppBar(
          title: Text(title),
          centerTitle: true,
          leading: myBackButton(context: context),
          backgroundColor: First_Blue,
          foregroundColor: Colors.white,
          elevation: 0,
        );
  }

