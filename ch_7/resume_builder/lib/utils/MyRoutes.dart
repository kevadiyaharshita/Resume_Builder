import 'package:flutter/material.dart';
class MyRoutes{

  static String home = '/';
  static String resumeWorkspace = 'resume_workspace';
  static String SplashScreen = 'Splash_Screen';
  static String iconPath = "assets/icons/";

  static List<Map< String, dynamic >> buildOptions = [
    {
      'name': 'contact_info',
      'title': 'Contact Info',
      'icon': '${iconPath}contact_detail-removebg-preview (1).png',
      'info_val': 0,
      'total_field': 5,
    },
    {
      'name': 'carrier_objective',
      'title': 'Carrier Objective',
      'icon': '${iconPath}briefcase.png',
      'info_val': 0,
      'total_field': 2,
    },
    {
      'name': 'personal_details',
      'title': 'Personal Details',
      'icon': '${iconPath}account.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'education',
      'title': 'Education',
      'icon': '${iconPath}graduation-cap.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'experiences',
      'title': 'Experiences',
      'icon': '${iconPath}logical-thinking.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'technical_skills',
      'title': 'Technical Skills',
      'icon': '${iconPath}certificate.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'interest/hobbies',
      'title': 'Interest/Hobbies',
      'icon': '${iconPath}open-book.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'projects',
      'title': 'Projects',
      'icon': '${iconPath}project-management.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'achievements',
      'title': 'Achievements',
      'icon': '${iconPath}experience.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'references',
      'title': 'References',
      'icon': '${iconPath}handshake.png',
      'info_val': 0,
      'total_field': 1,
    },
    {
      'name': 'declaration',
      'title': 'Declaration',
      'icon': '${iconPath}declaration.png',
      'info_val': 0,
      'total_field': 1,
    },

  ];
}