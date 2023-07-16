import 'package:resume_builder/globals/Global_class.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/MyRoutes.dart';



void contact_info_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[0]['info_val']=0;
  if(Global.Name != null)
    {
      MyRoutes.buildOptions[0]['info_val']++;
    }

  if(Global.Email != null)
    {
      MyRoutes.buildOptions[0]['info_val']++;
    }
  if(Global.Phone != null)
  {
    MyRoutes.buildOptions[0]['info_val']++;
  }
  if(Global.address != null)
  {
    MyRoutes.buildOptions[0]['info_val']++;
  }

  print("${MyRoutes.buildOptions[0]['info_val']}");
  print("Method called");

}

void career_objective_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[1]['info_val']=0;
  if(Global.career_objective_discription != null)
  {
    MyRoutes.buildOptions[1]['info_val']++;
  }

  if(Global.current_designation != null)
  {
    MyRoutes.buildOptions[1]['info_val']++;
  }

  print("${MyRoutes.buildOptions[1]['info_val']}");
  print("Method called");

}