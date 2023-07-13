import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/utils/MyRoutes.dart';
import 'package:resume_builder/views/screens/Achievements.dart';
import 'package:resume_builder/views/screens/Carrier_Objective.dart';
import 'package:resume_builder/views/screens/Contact_Info.dart';
import 'package:resume_builder/views/screens/Declaration.dart';
import 'package:resume_builder/views/screens/Education.dart';
import 'package:resume_builder/views/screens/Experiences.dart';
import 'package:resume_builder/views/screens/Home_Page.dart';
import 'package:resume_builder/views/screens/Interest_Hobbies.dart';
import 'package:resume_builder/views/screens/Personal_Details.dart';
import 'package:resume_builder/views/screens/Projects.dart';
import 'package:resume_builder/views/screens/References.dart';
import 'package:resume_builder/views/screens/ResumeWorkspace.dart';
import 'package:resume_builder/views/screens/Splash_Screen.dart';
import 'package:resume_builder/views/screens/Technical_Skills.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: First_Blue,
      ),
      initialRoute: MyRoutes.SplashScreen,
      routes: {
        MyRoutes.home: (context) => const HomePage(),
        MyRoutes.SplashScreen: (context) => const SplashScreen(),
        MyRoutes.resumeWorkspace: (context) => const ResumeWorkspace(),
        MyRoutes.buildOptions[0]['name']: (context) => const ContactInfo(),
        MyRoutes.buildOptions[1]['name']: (context) => const CarrierObjective(),
        MyRoutes.buildOptions[2]['name']: (context) => const PersonalDetails(),
        MyRoutes.buildOptions[3]['name']: (context) => const Education(),
        MyRoutes.buildOptions[4]['name']: (context) => const Experiences(),
        MyRoutes.buildOptions[5]['name']: (context) => const Technical_Skills(),
        MyRoutes.buildOptions[6]['name']: (context) => const Interest_Hobbies(),
        MyRoutes.buildOptions[7]['name']: (context) => const Projects(),
        MyRoutes.buildOptions[8]['name']: (context) => const Achievements(),
        MyRoutes.buildOptions[9]['name']: (context) => const References(),
        MyRoutes.buildOptions[10]['name']: (context) => const Declaration(),

      },
    );
  }
}
