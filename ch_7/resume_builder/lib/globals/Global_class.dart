import 'dart:io';

import 'package:flutter/material.dart';

class Global{
  static String? Name;
  static String? Email;
  static String? Phone;
  static String? address;
  static File? image ;

  static String? DOB;
  static String? maritalStatus;
  static List languages=[];
  static String? nationality;

  static String? declaration_discription;
  static String? declaration_date;
  static String? declaration_venue;



  static String? career_objective_discription;
  static String? current_designation;

  // static List<Map> education_Data = [];

  static List<TextEditingController> course = [];
  static List<TextEditingController> school = [];
  static List<TextEditingController> grade = [];
  static List<TextEditingController> year = [];

  static List<TextEditingController> reference_name = [];
  static List<TextEditingController> reference_designation = [];
  static List<TextEditingController> reference_email = [];
  static List<TextEditingController> reference_phone = [];


  static List<TextEditingController> experience_company_name = [];
  static List<TextEditingController> experience_designation = [];
  static List<TextEditingController> experience_startingdate = [];
  static List<TextEditingController> experience_endingdate = [];
  // static List<TextEditingController>  experience_current_working = [];
  static List<bool>  experience_current_working = [];
  static List<TextEditingController> experience_details = [];


  static List<TextEditingController> technical_Skills = [];

  static List<TextEditingController> interest_hobbies = [];

  static List<TextEditingController> achievements = [];
  static List<TextEditingController> achievements_details = [];

  static List<TextEditingController> project_Title = [];
  static List<TextEditingController> project_Technologies = [];
  static List<TextEditingController> project_Link = [];
  static List<TextEditingController> project_Role = [];
  static List<TextEditingController> project_Discription = [];




  // static List<Map> reference_Data = [];


  // static List<int> Global_info_count = List.filled(11, 0);
}