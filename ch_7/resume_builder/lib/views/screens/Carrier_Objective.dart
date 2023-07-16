import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../globals/Global_class.dart';
import '../components/myAppBar.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar:  myAppBar(context,"Carrier Objective"),
         body: Padding(
           padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                 children: [
                   Container(
                     width: double.infinity,
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Six_Blue),
                         borderRadius:BorderRadius.circular(8)
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Career Objective",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: First_Blue,)),
                         SizedBox(height: 5,),

                         TextFormField(

                           maxLines: 5,
                           textInputAction: TextInputAction.next,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           style: TextStyle(color: First_Blue),
                           validator: (val){
                             if(val!.isEmpty)
                             {
                               return "Please Enter Objective !!";
                             }
                             else
                             {
                               return null;
                             }
                           },

                           decoration: InputDecoration(
                               iconColor: First_Blue,
                               focusColor: First_Blue,
                               hintText: "Discription",

                               // labelText: "Name",
                               hintStyle: TextStyle(color: Third_Blue),
                               labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),

                               focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                     color: First_Blue,
                                     width: 2,
                                   )
                               ),
                               enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                     color: Second_Blue,
                                   )
                               ),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                       color: Four_Blue
                                   )
                               )
                           ),
                           onChanged: (val){
                             setState(() {
                               Global.career_objective_discription = val;
                             });
                           },
                         ),
                         // SizedBox(height: 30,),

                       ],
                     ),
                   ),

                   SizedBox(
                     height: 30,
                   ),

                   Container(
                     width: double.infinity,
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         border: Border.all(color: Six_Blue),
                         borderRadius:BorderRadius.circular(8)
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Text("Current Designation(Experienced Candidates)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: First_Blue,)),
                         SizedBox(height: 5,),

                         TextFormField(

                           maxLines: 5,
                           textInputAction: TextInputAction.next,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           style: TextStyle(color: First_Blue),
                           validator: (val){
                             if(val!.isEmpty)
                             {
                               return "Please Enter Objective !!";
                             }
                             else
                             {
                               return null;
                             }
                           },

                           decoration: InputDecoration(
                               iconColor: First_Blue,
                               focusColor: First_Blue,
                               hintText: "Software Engineer",

                               // labelText: "Name",
                               hintStyle: TextStyle(color: Third_Blue),
                               labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),

                               focusedBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                     color: First_Blue,
                                     width: 2,
                                   )
                               ),
                               enabledBorder: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                     color: Second_Blue,
                                   )
                               ),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(8),
                                   borderSide: BorderSide(
                                       color: Four_Blue
                                   )
                               )
                           ),
                           onChanged: (val){
                             setState(() {
                              Global.current_designation = val;
                             });
                           },
                         ),
                       ],
                     ),
                   ),
                 ],
           ),
              ),
            ),
         ),
      ),
    );
  }
}



