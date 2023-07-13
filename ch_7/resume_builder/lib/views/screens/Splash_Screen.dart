import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/utils/MyRoutes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {
  changepage()
  {
    Timer.periodic(Duration(seconds: 4), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.home);
      timer.cancel();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
       changepage();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Six_Blue,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset('assets/images/Online resume (1).gif',scale: 2,),
              // Transform.scale(
              //   scale: 4,
              //   child: Image.asset('assets/images/Online resume (1).gif',),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
