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
  if(Global.image != null)
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

void Personal_detail_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[2]['info_val']=0;
  if(Global.DOB != null)
  {
    MyRoutes.buildOptions[2]['info_val']++;
  }

  if(Global.maritalStatus != null)
  {
    MyRoutes.buildOptions[2]['info_val']++;
  }
  if(Global.languages.isNotEmpty)
  {
    MyRoutes.buildOptions[2]['info_val']++;
  }
  if(Global.nationality != null)
  {
    MyRoutes.buildOptions[2]['info_val']++;
  }

  }




void education_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[3]['info_val']=0;
  if(Global.course != null)
  {
    int counter = 0;
    Global.course.forEach((element) {
      counter ++;
    });

    if(counter > 2)
      MyRoutes.buildOptions[3]['info_val'] = 2;
    else
      MyRoutes.buildOptions[3]['info_val'] = counter;
  }



  print("${MyRoutes.buildOptions[1]['info_val']}");
  print("Method called");

}

void experience_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[4]['info_val']=0;
  if(Global.experience_company_name != null)
  {
    int counter = 0;
    Global.experience_company_name.forEach((element) {
      counter ++;
    });

    if(counter > 0)
      MyRoutes.buildOptions[4]['info_val'] = 1;
    else
      MyRoutes.buildOptions[4]['info_val'] = counter;
  }
}



void project_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[7]['info_val']=0;
  if(Global.project_Title != null)
  {
    int counter = 0;
    Global.project_Title.forEach((element) {
      counter ++;
    });

    if(counter > 1)
      MyRoutes.buildOptions[7]['info_val'] = 2;
    else
      MyRoutes.buildOptions[7]['info_val'] = counter;
  }
}

void technival_skills_count()
  {

    MyRoutes.buildOptions[5]['info_val']=0;
    if(Global.technical_Skills != null)
    {
      int counter = 0;
      Global.technical_Skills.forEach((element) {
        counter ++;
      });
      MyRoutes.buildOptions[5]['info_val'] = counter;
    }

}

void interest_hobbies_count()
{

  MyRoutes.buildOptions[6]['info_val']=0;
  if(Global.interest_hobbies != null)
  {
    int counter = 0;
    Global.interest_hobbies.forEach((element) {
      counter ++;
    });
    MyRoutes.buildOptions[6]['info_val'] = counter;
  }

}

void achievements_count()
{

  MyRoutes.buildOptions[8]['info_val']=0;
  if(Global.achievements != null)
  {
    int counter = 0;
    Global.achievements.forEach((element) {
      counter ++;
    });
    MyRoutes.buildOptions[8]['info_val'] = counter;
  }

}



void reference_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[9]['info_val']=0;
  if(Global.reference_name != null)
  {
    int counter = 0;
    Global.reference_name.forEach((element) {
      counter ++;
    });


    if(counter > 0)
      MyRoutes.buildOptions[9]['info_val'] = 1;
    else
      MyRoutes.buildOptions[9]['info_val'] = counter;
  }



}

void Declaration_count()
{
  // Global.Global_info_count[0] = 0;
  MyRoutes.buildOptions[10]['info_val']=0;
  if(Global.declaration_discription != null)
  {
    MyRoutes.buildOptions[10]['info_val']++;
  }

  if(Global.declaration_date != null)
  {
    MyRoutes.buildOptions[10]['info_val']++;
  }
  if(Global.declaration_venue != null)
  {
    MyRoutes.buildOptions[10]['info_val']++;
  }

}