
import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List<Map> edu_tmp_list = [];
  Map edu_single_map = {
    'Course/Degree': "",
    'School/University': "",
    'Grade/Score': "",
    'Year': "",
  };

  bool isSaved = false;
  int Education_Counter = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    int label_index_Counter = 0;
    int Counter = 0;

    return GestureDetector(
        onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text("Education"),
            centerTitle: true,
            leading: myBackButton(context: context),
            backgroundColor: First_Blue,
            foregroundColor: Colors.white,
            elevation: 0,

          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: (Global.education_Data.isEmpty)
                      ?List.generate(1, (index) {
                        print("This is True Part...");
                        label_index_Counter++;
                      return Container(
                    width: double.infinity,
                    height: (h / 2.25)+35,
                    margin: EdgeInsets.only(bottom: 16),
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: First_Blue),
                        borderRadius:BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          padding: EdgeInsets.fromLTRB(10,0,1,0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
                            color: First_Blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(),
                              Text("Education-${index+1}",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                              IconButton(
                                  onPressed:(){
                                    setState(() {
                                      if(Education_Counter > 0)
                                        {
                                          Education_Counter--;
                                        }
                                      print("This is True Part...delete part");
                                    });
                                  } ,
                                  icon: Icon(Icons.delete,size: 20,color: Colors.white,)
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),

                        //Corse/Degree
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter Your Course / Degree !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Course / Degree",
                                labelText: "Course / Degree",
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
                                edu_single_map['Course/Degree'] = val;
                              });
                            },
                          ),
                        ),

                        //School / University
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter School / University !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "School University",
                                labelText: "School University",
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
                                edu_single_map['School/University'] = val;
                              });
                            },
                          ),
                        ),

                        //Grade/Score
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter Grade / Score !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Grade / Score",
                                labelText: "Grade / Score",
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
                                // Global.Name = val;
                                edu_single_map['Grade/Score'] = val;
                              });
                            },
                          ),
                        ),

                        //Year
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter Year !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Year",
                                labelText:  "Year",
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
                                // Global.Name = val;
                                edu_single_map['Year'] = val;
                              });
                            },
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 35,
                          width: double.infinity,
                          // padding: EdgeInsets.fromLTRB(0,0,0,0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(7)),
                            color: First_Blue,
                          ),
                          alignment: Alignment.center,
                          child:TextButton(
                            onPressed:(){
                                      Global.education_Data.add(edu_single_map);
                                      Global.education_Data.forEach((element) {
                                        print(element);
                                      });
                                      edu_single_map.clear();
                                      isSaved = true;
                                    } ,

                            child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          )
                        ),
                      ],
                    ),
                  );
                      })


                      :
                 [
                   ...Global.education_Data.map((e) {
                     Counter++;
                          print("This is false Global_education_data Part..");

                      return Container(
                        width: double.infinity,
                        height: (h / 2.25)+35,
                        margin: EdgeInsets.only(bottom: 16),
                        // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: First_Blue),
                            borderRadius:BorderRadius.circular(8)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,

                              padding: EdgeInsets.fromLTRB(10,0,1,0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
                                color: First_Blue,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // SizedBox(),
                                  Text("Education-$Counter",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                  IconButton(
                                      onPressed:(){
                                        Global.education_Data.remove(e);
                                        Global.education_Data.forEach((element) {
                                          print(element);
                                        });
                                        print("This is false Global_education_data Part Delete part");
                                        print("$Global.education_Data");
                                      } ,
                                      icon: Icon(Icons.delete,size: 20,color: Colors.white,)
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 16,),

                            //Course/degree
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: First_Blue),
                                // validator: (val){
                                //   if(val!.isEmpty)
                                //   {
                                //     return "Please Enter Your Course / Degree !!";
                                //   }
                                //   else
                                //   {
                                //     return null;
                                //   }
                                // },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                     // hintText: "Course / Degree",

                                    labelText: "Course / Degree",
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
                                    // Global.Name = val;
                                    Global.education_Data[Global.education_Data.indexOf(e)]['Course/Degree'] = val;
                                  });
                                },
                              ),
                            ),

                            //School/university
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: First_Blue),
                                // validator: (val){
                                //   if(val!.isEmpty)
                                //   {
                                //     return "Please Enter School / University !!";
                                //   }
                                //   else
                                //   {
                                //     return null;
                                //   }
                                // },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    // hintText: "School University",
                                    labelText: "School University",
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
                                    // Global.Name = val;
                                    Global.education_Data[Global.education_Data.indexOf(e)][ 'School/University'] = val;
                                  });
                                },
                              ),
                            ),

                            //Grade/Score
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: First_Blue),
                                // validator: (val){
                                //   if(val!.isEmpty)
                                //   {
                                //     return "Please Enter Grade / Score !!";
                                //   }
                                //   else
                                //   {
                                //     return null;
                                //   }
                                // },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    // hintText: "Grade / Score",
                                    labelText: "Grade / Score",
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
                                    // Global.Name = val;
                                    Global.education_Data[Global.education_Data.indexOf(e)]['Grade/Score'] = val;
                                  });
                                },
                              ),
                            ),

                            //Year
                            Padding(
                              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(color: First_Blue),
                                // validator: (val){
                                //   if(val!.isEmpty)
                                //   {
                                //     return "Please Enter Year !!";
                                //   }
                                //   else
                                //   {
                                //     return null;
                                //   }
                                // },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    // hintText: "Year",
                                    labelText:  "Year",
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
                                    Global.education_Data[Global.education_Data.indexOf(e)]['Year'] = val;
                                  });
                                },
                              ),
                            ),
                            Spacer(),
                            Container(
                                height: 35,
                                width: double.infinity,
                                // padding: EdgeInsets.fromLTRB(0,0,0,0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(7)),
                                  color: First_Blue,
                                ),
                                alignment: Alignment.center,
                                child:TextButton(
                                  onPressed:(){
                                    // Global.education_Data.add(edu_single_map);
                                    // edu_single_map.clear();
                                    isSaved = true;
                                  } ,

                                  child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                )
                            ),

                          ],
                        ),
                      );
                    }).toList(),
                   ...List.generate(1, (index) {
                     print("This is false Part...");
                     Counter++;
                     return Container(
                       width: double.infinity,
                       height: (h / 2.25)+35,
                       margin: EdgeInsets.only(bottom: 16),
                       // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(color: First_Blue),
                           borderRadius:BorderRadius.circular(8)
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: 35,
                             padding: EdgeInsets.fromLTRB(10,0,1,0),
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
                               color: First_Blue,
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               // crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 // SizedBox(),
                                 Text("Education-$Counter",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                 IconButton(
                                     onPressed:(){
                                       setState(() {
                                         if(Education_Counter > 0)
                                         {
                                           Education_Counter--;
                                           Global.education_Data.forEach((element) {
                                             print(element);
                                           });
                                         }
                                         print("This is false Part...delete part");
                                       });
                                     } ,
                                     icon: Icon(Icons.delete,size: 20,color: Colors.white,)
                                 )
                               ],
                             ),
                           ),
                           SizedBox(height: 16,),

                           //Corse/Degree
                           Padding(
                             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                             child: TextFormField(

                               keyboardType: TextInputType.name,
                               textInputAction: TextInputAction.next,
                               style: TextStyle(color: First_Blue),
                               // validator: (val){
                               //   if(val!.isEmpty)
                               //   {
                               //     return "Please Enter Your Course / Degree !!";
                               //   }
                               //   else
                               //   {
                               //     return null;
                               //   }
                               // },

                               decoration: InputDecoration(
                                   focusColor: First_Blue,
                                   // hintText: "Course / Degree",
                                   labelText: "Course / Degree",
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
                                   edu_single_map['Course/Degree'] = val;
                                 });
                               },
                             ),
                           ),

                           //School / University
                           Padding(
                             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                             child: TextFormField(

                               keyboardType: TextInputType.name,
                               textInputAction: TextInputAction.next,
                               style: TextStyle(color: First_Blue),
                               // validator: (val){
                               //   if(val!.isEmpty)
                               //   {
                               //     return "Please Enter School / University !!";
                               //   }
                               //   else
                               //   {
                               //     return null;
                               //   }
                               // },

                               decoration: InputDecoration(
                                   focusColor: First_Blue,
                                   // hintText: "School University",
                                   labelText: "School University",
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
                                   edu_single_map['School/University'] = val;
                                 });
                               },
                             ),
                           ),

                           //Grade/Score
                           Padding(
                             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                             child: TextFormField(

                               keyboardType: TextInputType.name,
                               textInputAction: TextInputAction.next,
                               style: TextStyle(color: First_Blue),
                               // validator: (val){
                               //   if(val!.isEmpty)
                               //   {
                               //     return "Please Enter Grade / Score !!";
                               //   }
                               //   else
                               //   {
                               //     return null;
                               //   }
                               // },

                               decoration: InputDecoration(
                                   focusColor: First_Blue,
                                   // hintText: "Grade / Score",
                                   labelText: "Grade / Score",
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
                                   // Global.Name = val;
                                   edu_single_map['Grade/Score'] = val;
                                 });
                               },
                             ),
                           ),

                           //Year
                           Padding(
                             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                             child: TextFormField(

                               keyboardType: TextInputType.name,
                               textInputAction: TextInputAction.next,
                               style: TextStyle(color: First_Blue),
                               // validator: (val){
                               //   if(val!.isEmpty)
                               //   {
                               //     return "Please Enter Year !!";
                               //   }
                               //   else
                               //   {
                               //     return null;
                               //   }
                               // },

                               decoration: InputDecoration(
                                   focusColor: First_Blue,
                                   // hintText: "Year",
                                   labelText:  "Year",
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
                                   // Global.Name = val;
                                   edu_single_map['Year'] = val;
                                 });
                               },
                             ),
                           ),
                           Spacer(),
                           Container(
                               height: 35,
                               width: double.infinity,
                               // padding: EdgeInsets.fromLTRB(0,0,0,0),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.vertical(bottom: Radius.circular(7)),
                                 color: First_Blue,
                               ),
                               alignment: Alignment.center,
                               child:TextButton(
                                 onPressed:(){
                                   Global.education_Data.add(edu_single_map);
                                   edu_single_map.clear();
                                   isSaved = true;
                                   print("$Global.education_Data");
                                 } ,

                                 child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                               )
                           ),
                         ],
                       ),
                     );
                   })
                 ]
                  // [
                  //         ...Global.education_Data.map((e) {
                  //           print("This is false Global_education_data Part..");
                  //       Counter ++;
                  //       return Container(
                  //         width: double.infinity,
                  //         height: h / 2.25,
                  //         // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             border: Border.all(color: Six_Blue),
                  //             borderRadius:BorderRadius.circular(8)
                  //         ),
                  //         child: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Container(
                  //               height: 35,
                  //               padding: EdgeInsets.fromLTRB(10,0,1,0),
                  //               decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  //                 color: First_Blue,
                  //               ),
                  //               child: Row(
                  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //                 // crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   // SizedBox(),
                  //                   Text("Education-$Counter",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  //                   IconButton(
                  //                       onPressed:(){
                  //                         Global.education_Data.remove(e);
                  //                         print("This is false Global_education_data Part Delete part");
                  //                       } ,
                  //                       icon: Icon(Icons.delete,size: 20,color: Colors.white,)
                  //                   )
                  //                 ],
                  //               ),
                  //             ),
                  //             SizedBox(height: 16,),
                  //
                  //             Padding(
                  //               padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //               child: TextFormField(
                  //
                  //                 keyboardType: TextInputType.name,
                  //                 textInputAction: TextInputAction.next,
                  //                 style: TextStyle(color: First_Blue),
                  //                 // validator: (val){
                  //                 //   if(val!.isEmpty)
                  //                 //   {
                  //                 //     return "Please Enter Your Course / Degree !!";
                  //                 //   }
                  //                 //   else
                  //                 //   {
                  //                 //     return null;
                  //                 //   }
                  //                 // },
                  //
                  //                 decoration: InputDecoration(
                  //                     focusColor: First_Blue,
                  //                      // hintText: "Course / Degree",
                  //
                  //                     labelText: "Course / Degree",
                  //                     hintStyle: TextStyle(color: Third_Blue),
                  //                     labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                     focusedBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: First_Blue,
                  //                           width: 2,
                  //                         )
                  //                     ),
                  //                     enabledBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: Second_Blue,
                  //                         )
                  //                     ),
                  //                     border: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                             color: Four_Blue
                  //                         )
                  //                     )
                  //                 ),
                  //                 onChanged: (val){
                  //                   setState(() {
                  //                     // Global.Name = val;
                  //                   });
                  //                 },
                  //               ),
                  //             ),
                  //             Padding(
                  //               padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //               child: TextFormField(
                  //
                  //                 keyboardType: TextInputType.name,
                  //                 textInputAction: TextInputAction.next,
                  //                 style: TextStyle(color: First_Blue),
                  //                 // validator: (val){
                  //                 //   if(val!.isEmpty)
                  //                 //   {
                  //                 //     return "Please Enter School / University !!";
                  //                 //   }
                  //                 //   else
                  //                 //   {
                  //                 //     return null;
                  //                 //   }
                  //                 // },
                  //
                  //                 decoration: InputDecoration(
                  //                     focusColor: First_Blue,
                  //                     // hintText: "School University",
                  //                     labelText: "School University",
                  //                     hintStyle: TextStyle(color: Third_Blue),
                  //                     labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                     focusedBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: First_Blue,
                  //                           width: 2,
                  //                         )
                  //                     ),
                  //                     enabledBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: Second_Blue,
                  //                         )
                  //                     ),
                  //                     border: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                             color: Four_Blue
                  //                         )
                  //                     )
                  //                 ),
                  //                 onChanged: (val){
                  //                   setState(() {
                  //                     // Global.Name = val;
                  //                   });
                  //                 },
                  //               ),
                  //             ),
                  //             Padding(
                  //               padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //               child: TextFormField(
                  //
                  //                 keyboardType: TextInputType.name,
                  //                 textInputAction: TextInputAction.next,
                  //                 style: TextStyle(color: First_Blue),
                  //                 // validator: (val){
                  //                 //   if(val!.isEmpty)
                  //                 //   {
                  //                 //     return "Please Enter Grade / Score !!";
                  //                 //   }
                  //                 //   else
                  //                 //   {
                  //                 //     return null;
                  //                 //   }
                  //                 // },
                  //
                  //                 decoration: InputDecoration(
                  //                     focusColor: First_Blue,
                  //                     // hintText: "Grade / Score",
                  //                     labelText: "Grade / Score",
                  //                     hintStyle: TextStyle(color: Third_Blue),
                  //                     labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                     focusedBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: First_Blue,
                  //                           width: 2,
                  //                         )
                  //                     ),
                  //                     enabledBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: Second_Blue,
                  //                         )
                  //                     ),
                  //                     border: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                             color: Four_Blue
                  //                         )
                  //                     )
                  //                 ),
                  //                 onChanged: (val){
                  //                   setState(() {
                  //                     // Global.Name = val;
                  //                   });
                  //                 },
                  //               ),
                  //             ),
                  //             Padding(
                  //               padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //               child: TextFormField(
                  //
                  //                 keyboardType: TextInputType.name,
                  //                 textInputAction: TextInputAction.next,
                  //                 style: TextStyle(color: First_Blue),
                  //                 // validator: (val){
                  //                 //   if(val!.isEmpty)
                  //                 //   {
                  //                 //     return "Please Enter Year !!";
                  //                 //   }
                  //                 //   else
                  //                 //   {
                  //                 //     return null;
                  //                 //   }
                  //                 // },
                  //
                  //                 decoration: InputDecoration(
                  //                     focusColor: First_Blue,
                  //                     // hintText: "Year",
                  //                     labelText:  "Year",
                  //                     hintStyle: TextStyle(color: Third_Blue),
                  //                     labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                     focusedBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: First_Blue,
                  //                           width: 2,
                  //                         )
                  //                     ),
                  //                     enabledBorder: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                           color: Second_Blue,
                  //                         )
                  //                     ),
                  //                     border: OutlineInputBorder(
                  //                         borderRadius: BorderRadius.circular(8),
                  //                         borderSide: BorderSide(
                  //                             color: Four_Blue
                  //                         )
                  //                     )
                  //                 ),
                  //                 onChanged: (val){
                  //                   setState(() {
                  //                     // Global.Name = val;
                  //                   });
                  //                 },
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     }).toList(),
                  //  ... List.generate(Education_Counter, (index) {
                  //    print("This is false List Generate Part");
                  //     Counter++;
                  //     return Container(
                  //       width: double.infinity,
                  //       height: h / 2.25,
                  //       // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       decoration: BoxDecoration(
                  //           color: Colors.white,
                  //           border: Border.all(color: Six_Blue),
                  //           borderRadius:BorderRadius.circular(8)
                  //       ),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Container(
                  //             height: 35,
                  //             padding: EdgeInsets.fromLTRB(10,0,1,0),
                  //             decoration: BoxDecoration(
                  //               borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  //               color: First_Blue,
                  //             ),
                  //             child: Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               // crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 // SizedBox(),
                  //                 Text("Education-$Counter",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  //                 IconButton(
                  //                     onPressed:(){
                  //                       setState(() {
                  //                         if(Education_Counter>0) {
                  //                           Education_Counter--;
                  //                         }
                  //                         print("This is false List Generate Part Delete Button");
                  //                       });
                  //                     } ,
                  //                     icon: Icon(Icons.delete,size: 20,color: Colors.white,)
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //           SizedBox(height: 16,),
                  //
                  //           //Corse/Degree
                  //           Padding(
                  //             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //             child: TextFormField(
                  //
                  //               keyboardType: TextInputType.name,
                  //               textInputAction: TextInputAction.next,
                  //               style: TextStyle(color: First_Blue),
                  //               // validator: (val){
                  //               //   if(val!.isEmpty)
                  //               //   {
                  //               //     return "Please Enter Your Course / Degree !!";
                  //               //   }
                  //               //   else
                  //               //   {
                  //               //     return null;
                  //               //   }
                  //               // },
                  //
                  //               decoration: InputDecoration(
                  //                   focusColor: First_Blue,
                  //                   // hintText: "Course / Degree",
                  //                   labelText: "Course / Degree",
                  //                   hintStyle: TextStyle(color: Third_Blue),
                  //                   labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                   focusedBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: First_Blue,
                  //                         width: 2,
                  //                       )
                  //                   ),
                  //                   enabledBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: Second_Blue,
                  //                       )
                  //                   ),
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                           color: Four_Blue
                  //                       )
                  //                   )
                  //               ),
                  //               onChanged: (val){
                  //                 setState(() {
                  //                   edu_single_map['Course/Degree'] = val;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //
                  //           //School / University
                  //           Padding(
                  //             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //             child: TextFormField(
                  //
                  //               keyboardType: TextInputType.name,
                  //               textInputAction: TextInputAction.next,
                  //               style: TextStyle(color: First_Blue),
                  //               // validator: (val){
                  //               //   if(val!.isEmpty)
                  //               //   {
                  //               //     return "Please Enter School / University !!";
                  //               //   }
                  //               //   else
                  //               //   {
                  //               //     return null;
                  //               //   }
                  //               // },
                  //
                  //               decoration: InputDecoration(
                  //                   focusColor: First_Blue,
                  //                   // hintText: "School University",
                  //                   labelText: "School University",
                  //                   hintStyle: TextStyle(color: Third_Blue),
                  //                   labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                   focusedBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: First_Blue,
                  //                         width: 2,
                  //                       )
                  //                   ),
                  //                   enabledBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: Second_Blue,
                  //                       )
                  //                   ),
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                           color: Four_Blue
                  //                       )
                  //                   )
                  //               ),
                  //               onChanged: (val){
                  //                 setState(() {
                  //                   edu_single_map['School/University'] = val;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //
                  //           //Grade/Score
                  //           Padding(
                  //             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //             child: TextFormField(
                  //
                  //               keyboardType: TextInputType.name,
                  //               textInputAction: TextInputAction.next,
                  //               style: TextStyle(color: First_Blue),
                  //               // validator: (val){
                  //               //   if(val!.isEmpty)
                  //               //   {
                  //               //     return "Please Enter Grade / Score !!";
                  //               //   }
                  //               //   else
                  //               //   {
                  //               //     return null;
                  //               //   }
                  //               // },
                  //
                  //               decoration: InputDecoration(
                  //                   focusColor: First_Blue,
                  //                   // hintText: "Grade / Score",
                  //                   labelText: "Grade / Score",
                  //                   hintStyle: TextStyle(color: Third_Blue),
                  //                   labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                   focusedBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: First_Blue,
                  //                         width: 2,
                  //                       )
                  //                   ),
                  //                   enabledBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: Second_Blue,
                  //                       )
                  //                   ),
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                           color: Four_Blue
                  //                       )
                  //                   )
                  //               ),
                  //               onChanged: (val){
                  //                 setState(() {
                  //                   // Global.Name = val;
                  //                   edu_single_map['Grade/Score'] = val;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //
                  //           //Year
                  //           Padding(
                  //             padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  //             child: TextFormField(
                  //
                  //               keyboardType: TextInputType.name,
                  //               textInputAction: TextInputAction.next,
                  //               style: TextStyle(color: First_Blue),
                  //               // validator: (val){
                  //               //   if(val!.isEmpty)
                  //               //   {
                  //               //     return "Please Enter Year !!";
                  //               //   }
                  //               //   else
                  //               //   {
                  //               //     return null;
                  //               //   }
                  //               // },
                  //
                  //               decoration: InputDecoration(
                  //                   focusColor: First_Blue,
                  //                   // hintText: "Year",
                  //                   labelText:  "Year",
                  //                   hintStyle: TextStyle(color: Third_Blue),
                  //                   labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                  //                   focusedBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: First_Blue,
                  //                         width: 2,
                  //                       )
                  //                   ),
                  //                   enabledBorder: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                         color: Second_Blue,
                  //                       )
                  //                   ),
                  //                   border: OutlineInputBorder(
                  //                       borderRadius: BorderRadius.circular(8),
                  //                       borderSide: BorderSide(
                  //                           color: Four_Blue
                  //                       )
                  //                   )
                  //               ),
                  //               onChanged: (val){
                  //                 setState(() {
                  //                   // Global.Name = val;
                  //                   edu_single_map['Year'] = val;
                  //                 });
                  //               },
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   }) ,
                  //
                  // ],
                )
              ),
            ),
          ),
          floatingActionButton:FloatingActionButton.extended(
             onPressed: (){
               setState(() {
                 if(!isSaved)
                   {
                     Global.education_Data.add(edu_single_map);
                     edu_single_map.clear();
                   }
                 Education_Counter++;
                 Global.education_Data.forEach((element) {
                   print(element);
                 });
                 // edu_tmp_list.add(edu_single_map);
               });
             },
            backgroundColor: First_Blue,
            icon: Icon(Icons.add,size: 25,color: Colors.white,),
            label: Text("Add",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
          )
       ),
    );
  }
}

