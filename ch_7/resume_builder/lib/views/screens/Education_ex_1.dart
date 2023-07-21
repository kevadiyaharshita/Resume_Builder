// import 'package:flutter/material.dart';
// import 'package:resume_builder/views/components/myAppBar.dart';
// import 'package:resume_builder/views/components/myBackButton.dart';
//
// import '../../globals/Global_class.dart';
// import '../../utils/Color_utils.dart';
//
// class Education extends StatefulWidget {
//   const Education({Key? key}) : super(key: key);
//
//   @override
//   State<Education> createState() => _EducationState();
// }
//
// class _EducationState extends State<Education> {
//   GlobalKey<FormState> formkey = GlobalKey<FormState>();
//   //
//   // List<TextEditingController> course_Controller = List.generate(Global.education_Data.length, (index) => TextEditingController(text: Global.education_Data[index]['Course/Degree']));
//   // List<TextEditingController> school_Controller = List.generate(Global.education_Data.length, (index) => TextEditingController(text: Global.education_Data[index]['School/University']));
//   // List<TextEditingController> grade_Controller = List.generate(Global.education_Data.length, (index) => TextEditingController(text: Global.education_Data[index]['Grade/Score']));
//   // List<TextEditingController> year = List.generate(Global.education_Data.length, (index) => TextEditingController(text: Global.education_Data[index]['year']));
//
//   Map edu_single_map = {
//     'Course/Degree': "",
//     'School/University': "",
//     'Grade/Score': "",
//     'Year': "",
//   };
//
//
//   bool isSaved = false;
//   bool isAdd = false;
//   int empty_Counter = 1;
//   int c =0;
//
//   @override
//   Widget build(BuildContext context) {
//     Size s = MediaQuery.of(context).size;
//     double h = s.height;
//     double w = s.width;
//
//     int label_index_Counter = 0;
//     int Counter = 0;
//
//     return GestureDetector(
//       onTap: () {
//         FocusManager.instance.primaryFocus!.unfocus();
//       },
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text("Education"),
//             centerTitle: true,
//             leading: myBackButton(context: context),
//             backgroundColor: First_Blue,
//             foregroundColor: Colors.white,
//             elevation: 0,
//           ),
//           body: Padding(
//             padding: EdgeInsets.all(16),
//             child: SingleChildScrollView(
//               child: Form(
//                   key: formkey,
//
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: (Global.education_Data.isEmpty)
//                           ? List.generate(
//                         empty_Counter,
//                             (index) {
//                           print("This is True Part...");
//                           label_index_Counter++;
//                           return Container(
//                             width: double.infinity,
//                             height: (h / 2.25) + 35,
//                             margin: EdgeInsets.only(bottom: 16),
//                             // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 border: Border.all(color: First_Blue),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: Column(
//                               crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   height: 35,
//                                   padding:
//                                   EdgeInsets.fromLTRB(10, 0, 1, 0),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.vertical(
//                                         top: Radius.circular(7)),
//                                     color: First_Blue,
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     // crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       // SizedBox(),
//                                       Text(
//                                         "Education-${index + 1}",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               if (empty_Counter == 1) {
//                                                 empty_Counter = 0;
//                                                 print(
//                                                     "105 This is True Part...delete part");
//                                                 formkey.currentState!.reset();
//                                                 edu_single_map = {
//                                                   'Course/Degree': "",
//                                                   'School/University': "",
//                                                   'Grade/Score': "",
//                                                   'Year': "",
//                                                 };
//                                                 ScaffoldMessenger.of(context).showSnackBar(
//                                                     SnackBar(
//                                                       content: Text("Succesfully Deleted.."),
//                                                       backgroundColor: First_Blue,
//                                                       behavior: SnackBarBehavior.floating,
//                                                       duration: Duration(seconds: 5),
//                                                       shape: RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(20),
//                                                       ),
//                                                       margin: EdgeInsets.all(25),
//                                                       dismissDirection: DismissDirection.horizontal,
//                                                       action: SnackBarAction(
//                                                         label: "ok",
//                                                         onPressed: (){
//
//                                                         },
//                                                       ),
//                                                     )
//
//                                                 );
//
//                                               }
//
//                                             });
//                                             // empty_Counter = 1;
//                                           },
//                                           icon: Icon(
//                                             Icons.delete,
//                                             size: 20,
//                                             color: Colors.white,
//                                           ))
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 16,
//                                 ),
//
//                                 //Corse/Degree
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Your Course / Degree !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Course / Degree",
//                                         labelText: "Course / Degree",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//
//                                     onChanged: (val) {
//                                       setState(() {
//                                         edu_single_map['Course/Degree'] = val;
//
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //School / University
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter School / University !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "School University",
//                                         labelText: "School University",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         edu_single_map[
//                                         'School/University'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Grade/Score
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Grade / Score !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Grade / Score",
//                                         labelText: "Grade / Score",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         edu_single_map['Grade/Score'] =
//                                             val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Year
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Year !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Year",
//                                         labelText: "Year",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         edu_single_map['Year'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                     height: 35,
//                                     width: double.infinity,
//                                     // padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.vertical(
//                                           bottom: Radius.circular(7)),
//                                       color: First_Blue,
//                                     ),
//                                     alignment: Alignment.center,
//                                     child: TextButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           FocusManager
//                                               .instance.primaryFocus!
//                                               .unfocus();
//                                           setState(() {
//                                             Global.education_Data
//                                                 .add(edu_single_map);
//                                             print("342");
//                                             Global.education_Data
//                                                 .forEach((element) {
//                                               print(element);
//                                             });
//
//                                             isSaved = true;
//                                             // Global.education_Data.forEach((element) { print(element);});
//                                           });
//                                           ScaffoldMessenger.of(context).showSnackBar(
//                                               SnackBar(
//                                                 content: Text("Succesfully Saved!.."),
//                                                 backgroundColor: First_Blue,
//                                                 behavior: SnackBarBehavior.floating,
//                                                 duration: Duration(seconds: 5),
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius: BorderRadius.circular(20),
//                                                 ),
//                                                 margin: EdgeInsets.all(25),
//                                                 dismissDirection: DismissDirection.horizontal,
//                                                 action: SnackBarAction(
//                                                   label: "ok",
//                                                   onPressed: (){
//
//                                                   },
//                                                 ),
//                                               )
//
//                                           );
//                                         });
//
//                                         // edu_single_map['Course/Degree']= "";
//                                         // edu_single_map['School/University']= "";
//                                         // edu_single_map['Grade/Score']= "";
//                                         // edu_single_map['Year']= "";
//                                       },
//                                       child: Text(
//                                         "Save",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     )),
//                               ],
//                             ),
//                           );
//                         },
//                       )
//                           : [
//                         ...Global.education_Data.map((e) {
//
//                           TextEditingController course_Controller = TextEditingController(text: e['Course/Degree']);
//                           TextEditingController school_Controller = TextEditingController(text: e['School/University']);
//                           TextEditingController grade_Controller = TextEditingController(text: e['Grade/Score']);
//                           TextEditingController year_Controller = TextEditingController(text: e['Year']);
//
//                           Counter++;
//                           print(
//                               "365 This is false Global_education_data Part..");
//
//                           return Container(
//                             width: double.infinity,
//                             height: (h / 2.25) + 35,
//                             margin: EdgeInsets.only(bottom: 16),
//                             // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 border: Border.all(color: First_Blue),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: Column(
//                               crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   height: 35,
//                                   padding:
//                                   EdgeInsets.fromLTRB(10, 0, 1, 0),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.vertical(
//                                         top: Radius.circular(7)),
//                                     color: First_Blue,
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     // crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       // SizedBox(),
//                                       Text(
//                                         "Education-$Counter",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               formkey.currentState!.reset();
//                                               Global.education_Data
//                                                   .remove(e);
//
//                                               ScaffoldMessenger.of(context).showSnackBar(
//                                                   SnackBar(
//                                                     content: Text("Succesfully Deleted.."),
//                                                     backgroundColor: First_Blue,
//                                                     behavior: SnackBarBehavior.floating,
//                                                     duration: Duration(seconds: 5),
//                                                     shape: RoundedRectangleBorder(
//                                                       borderRadius: BorderRadius.circular(20),
//                                                     ),
//                                                     margin: EdgeInsets.all(25),
//                                                     dismissDirection: DismissDirection.horizontal,
//                                                     action: SnackBarAction(
//                                                       label: "ok",
//                                                       onPressed: (){
//
//                                                       },
//                                                     ),
//                                                   )
//
//                                               );
//                                               // course_Controller.remove(course_Controller[Global.education_Data.indexOf(e)]);
//                                               // school_Controller.remove(course_Controller[Global.education_Data.indexOf(e)]);
//                                               // grade_Controller.remove(course_Controller[Global.education_Data.indexOf(e)]);
//                                               print("398");
//                                               Global.education_Data
//                                                   .forEach((element) {
//                                                 print(element);
//                                               });
//                                             });
//                                             print(
//                                                 "404This is false Global_education_data Part Delete part");
//                                           },
//                                           icon: Icon(
//                                             Icons.delete,
//                                             size: 20,
//                                             color: Colors.white,
//                                           ))
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 16,
//                                 ),
//
//                                 //Course/degree
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     // initialValue: e['Course/Degree'],
//                                     controller: course_Controller,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Your Course / Degree !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Course / Degree",
//
//                                         labelText: "Course / Degree",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         Global.education_Data[Global.education_Data.indexOf(e)]['Course/Degree'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //School/university
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     // initialValue: e['School/University'],
//                                     controller: school_Controller,
//
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter School / University !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "School University",
//                                         labelText: "School University",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         Global.education_Data[Global.education_Data.indexOf(e)][ 'School/University'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Grade/Score
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     // initialValue: e['Grade/Score'],
//                                     controller: grade_Controller,
//
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Grade / Score !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Grade / Score",
//                                         labelText: "Grade / Score",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         Global.education_Data[Global.education_Data.indexOf(e)]['Grade/Score'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Year
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     // initialValue: e['Year'],
//                                     controller: year_Controller,
//
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Year !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Year",
//                                         labelText: "Year",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//
//                                     onChanged: (val) {
//                                       setState(() {
//                                         Global.education_Data[Global.education_Data.indexOf(e)]['Year'] = val;
//
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                     height: 35,
//                                     width: double.infinity,
//                                     // padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.vertical(
//                                           bottom: Radius.circular(7)),
//                                       color: First_Blue,
//                                     ),
//                                     alignment: Alignment.center,
//                                     child: TextButton(
//                                       onPressed: () {
//                                         // Global.education_Data.add(edu_single_map);
//                                         // edu_single_map['Course/Degree']= "";
//                                         // edu_single_map['School/University']= "";
//                                         // edu_single_map['Grade/Score']= "";
//                                         // edu_single_map['Year']= "";
//                                         // isSaved = true;
//                                         // Global.education_Data.forEach((element) { print(element);});
//                                         FocusManager
//                                             .instance.primaryFocus!
//                                             .unfocus();
//                                         setState(() {
//                                           isSaved = true;
//                                           ScaffoldMessenger.of(context).showSnackBar(
//                                               SnackBar(
//                                                 content: Text("Succesfully Saved!!.."),
//                                                 backgroundColor: First_Blue,
//                                                 behavior: SnackBarBehavior.floating,
//                                                 duration: Duration(seconds: 5),
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius: BorderRadius.circular(20),
//                                                 ),
//                                                 margin: EdgeInsets.all(25),
//                                                 dismissDirection: DismissDirection.horizontal,
//                                                 action: SnackBarAction(
//                                                   label: "ok",
//                                                   onPressed: (){
//
//                                                   },
//                                                 ),
//                                               )
//
//                                           );
//                                         });
//                                       },
//                                       child: Text(
//                                         "Save",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     )),
//                               ],
//                             ),
//                           );
//                         }).toList(),
//                         ...List.generate((isAdd) ? 1 : 0, (index) {
//                           // isAdd = false;
//                           print("669This is false Part...");
//                           Counter++;
//                           return Container(
//                             width: double.infinity,
//                             height: (h / 2.25) + 35,
//                             margin: EdgeInsets.only(bottom: 16),
//                             // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 border: Border.all(color: First_Blue),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: Column(
//                               crossAxisAlignment:
//                               CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   height: 35,
//                                   padding:
//                                   EdgeInsets.fromLTRB(10, 0, 1, 0),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.vertical(
//                                         top: Radius.circular(7)),
//                                     color: First_Blue,
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     // crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       // SizedBox(),
//                                       Text(
//                                         "Education-$Counter",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               isAdd = false;
//                                               // Education_Counter--;
//                                               Global.education_Data
//                                                   .forEach((element) {
//                                                 print(element);
//                                                 ScaffoldMessenger.of(context).showSnackBar(
//                                                     SnackBar(
//                                                       content: Text("Succesfully Deleted!!.."),
//                                                       backgroundColor: First_Blue,
//                                                       behavior: SnackBarBehavior.floating,
//                                                       duration: Duration(seconds: 5),
//                                                       shape: RoundedRectangleBorder(
//                                                         borderRadius: BorderRadius.circular(20),
//                                                       ),
//                                                       margin: EdgeInsets.all(25),
//                                                       dismissDirection: DismissDirection.horizontal,
//                                                       action: SnackBarAction(
//                                                         label: "ok",
//                                                         onPressed: (){
//
//                                                         },
//                                                       ),
//                                                     )
//
//                                                 );
//                                               });
//
//                                               print(
//                                                   "707This is false Part...delete part");
//                                             });
//                                           },
//                                           icon: Icon(
//                                             Icons.delete,
//                                             size: 20,
//                                             color: Colors.white,
//                                           ))
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 16,
//                                 ),
//
//                                 //Corse/Degree
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Your Course / Degree !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Course / Degree",
//                                         labelText: "Course / Degree",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         edu_single_map['Course/Degree'] =
//                                             val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //School / University
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter School / University !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "School University",
//                                         labelText: "School University",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         edu_single_map[
//                                         'School/University'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Grade/Score
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Grade / Score !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Grade / Score",
//                                         labelText: "Grade / Score",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         edu_single_map['Grade/Score'] =
//                                             val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//
//                                 //Year
//                                 Padding(
//                                   padding:
//                                   EdgeInsets.fromLTRB(16, 0, 16, 16),
//                                   child: TextFormField(
//                                     keyboardType: TextInputType.name,
//                                     textInputAction: TextInputAction.next,
//                                     style: TextStyle(color: First_Blue),
//                                     // validator: (val){
//                                     //   if(val!.isEmpty)
//                                     //   {
//                                     //     return "Please Enter Year !!";
//                                     //   }
//                                     //   else
//                                     //   {
//                                     //     return null;
//                                     //   }
//                                     // },
//
//                                     decoration: InputDecoration(
//                                         focusColor: First_Blue,
//                                         // hintText: "Year",
//                                         labelText: "Year",
//                                         hintStyle:
//                                         TextStyle(color: Third_Blue),
//                                         labelStyle: TextStyle(
//                                           fontSize: 20,
//                                           color: Third_Blue,
//                                         ),
//                                         focusedBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: First_Blue,
//                                               width: 2,
//                                             )),
//                                         enabledBorder: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                               color: Second_Blue,
//                                             )),
//                                         border: OutlineInputBorder(
//                                             borderRadius:
//                                             BorderRadius.circular(8),
//                                             borderSide: BorderSide(
//                                                 color: Four_Blue))),
//                                     onChanged: (val) {
//                                       setState(() {
//                                         // Global.Name = val;
//                                         edu_single_map['Year'] = val;
//                                       });
//                                     },
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                     height: 35,
//                                     width: double.infinity,
//                                     // padding: EdgeInsets.fromLTRB(0,0,0,0),
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.vertical(
//                                           bottom: Radius.circular(7)),
//                                       color: First_Blue,
//                                     ),
//                                     alignment: Alignment.center,
//                                     child: TextButton(
//                                       onPressed: () {
//                                         FocusManager
//                                             .instance.primaryFocus!
//                                             .unfocus();
//                                         setState(() {
//                                           Global.education_Data
//                                               .add(edu_single_map);
//                                           isAdd = false;
//                                           // edu_single_map['Course/Degree']= "";
//                                           // edu_single_map['School/University']= "";
//                                           // edu_single_map['Grade/Score']= "";
//                                           // edu_single_map['Year']= "";
//                                           isSaved = true;
//                                           ScaffoldMessenger.of(context).showSnackBar(
//                                               SnackBar(
//                                                 content: Text("Succesfully Saved!!.."),
//                                                 backgroundColor: First_Blue,
//                                                 behavior: SnackBarBehavior.floating,
//                                                 duration: Duration(seconds: 5),
//                                                 shape: RoundedRectangleBorder(
//                                                   borderRadius: BorderRadius.circular(20),
//                                                 ),
//                                                 margin: EdgeInsets.all(25),
//                                                 dismissDirection: DismissDirection.horizontal,
//                                                 action: SnackBarAction(
//                                                   label: "ok",
//                                                   onPressed: (){
//
//                                                   },
//                                                 ),
//                                               )
//
//                                           );
//                                           print(952);
//                                           Global.education_Data
//                                               .forEach((element) {
//                                             print(element);
//                                           });
//                                         });
//                                       },
//                                       child: Text(
//                                         "Save",
//                                         style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                     )),
//                               ],
//                             ),
//                           );
//                         })
//                       ])),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton.extended(
//             onPressed: () {
//               FocusManager.instance.primaryFocus!.unfocus();
//               setState(() {
//                 // if(isSaved == false && isAdd == true)
//                 //   {
//                 //      Global.education_Data.add(edu_single_map);
//                 //
//                 //     edu_single_map['Course/Degree']= "";
//                 //     edu_single_map['School/University']= "";
//                 //     edu_single_map['Grade/Score']= "";
//                 //     edu_single_map['Year']= "";
//                 //
//                 //   }
//                 // isAdd = true;
//                 empty_Counter = 1;
//                 print("981");
//                 Global.education_Data.add({
//                   'Course/Degree': "",
//                   'School/University': "",
//                   'Grade/Score': "",
//                   'Year': "",
//                 });
//                 debugPrint("===============================");
//                 debugPrint("Length: ${Global.education_Data.length}");
//                 debugPrint("===============================");
//                 // Global.education_Data.forEach((element) {
//                 //   print(element);
//                 // });
//                 // edu_tmp_list.add(edu_single_map);
//               });
//             },
//             backgroundColor: First_Blue,
//             icon: Icon(
//               Icons.add,
//               size: 25,
//               color: Colors.white,
//             ),
//             label: Text(
//               "Add",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold),
//             ),
//           )),
//     );
//   }
// }
//
// //Reference
//
// //=======================================================================================
// // import 'package:flutter/material.dart';
// // import 'package:resume_builder/views/components/myAppBar.dart';
// //
// // import '../../globals/Global_class.dart';
// // import '../../utils/Color_utils.dart';
// //
// // class References extends StatefulWidget {
// //   const References({Key? key}) : super(key: key);
// //
// //   @override
// //   State<References> createState() => _ReferencesState();
// // }
// //
// // class _ReferencesState extends State<References> {
// //   GlobalKey<FormState> formkey = GlobalKey<FormState>();
// //   Map m = {
// //     'name': "",
// //     'designation': "",
// //     'email': "",
// //     'Phone': "",
// //     'visibility': false,
// //   };
// //
// //   @override
// //   void initState() {
// //     setState(() {
// //       if(Global.reference_Data.isEmpty) {
// //         Global.reference_Data.add({ 'name': "",
// //           'designation': "",
// //           'email': "",
// //           'Phone': "",
// //           'visibility': false,},);
// //       }
// //     });
// //   }
// //
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //
// //     Size s = MediaQuery.of(context).size;
// //     double h = s.height;
// //     double w = s.width;
// //
// //
// //
// //     return GestureDetector(
// //       onTap: () {
// //         FocusManager.instance.primaryFocus!.unfocus();
// //       },
// //       child: GestureDetector(
// //         onTap: () {
// //           FocusManager.instance.primaryFocus!.unfocus();
// //         },
// //         child: Scaffold(
// //             appBar: myAppBar(context, "References"),
// //
// //             body: Padding(
// //               padding: EdgeInsets.all(16),
// //               child: SingleChildScrollView(
// //                 child: Form(
// //                   key: formkey,
// //                   child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [...Global.reference_Data.map(
// //                               (e) {
// //                             // Global.reference_Data.forEach((element) {print(element);});
// //                             return (e['visibility'])
// //                                 ?  GestureDetector(
// //                               onTap: (){
// //                                 setState(() {
// //                                   Global.reference_Data.forEach((element) {
// //
// //                                     if(element != e)
// //                                     {
// //                                       Global.reference_Data[Global.reference_Data.indexOf(element)]['visibility'] = true;
// //                                     }
// //                                     else
// //                                     {
// //
// //                                       print("Not Matched..");
// //                                     }
// //                                   });
// //                                   e['visibility'] = false;
// //                                 });
// //                               },
// //                               child: Container(
// //                                 width: w,
// //                                 height: 50,
// //                                 margin: EdgeInsets.only(bottom: 10),
// //                                 padding: EdgeInsets.all(5),
// //                                 decoration: BoxDecoration(
// //                                     color: Colors.white,
// //                                     border: Border.all(color: First_Blue),
// //                                     borderRadius: BorderRadius.circular(8)
// //                                 ),
// //                                 child: Row(
// //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                   children: [
// //                                     Text(e['name'],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: First_Blue),),
// //                                     IconButton(
// //                                       onPressed: (){
// //                                         setState(() {
// //                                           Global.reference_Data.remove(e);
// //                                         });
// //                                       },
// //                                       icon: Icon(Icons.delete,size: 25,color: First_Blue,),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             )
// //                                 :   Container(
// //                               width: double.infinity,
// //                               height: (h / 2.25) + 35,
// //                               margin: EdgeInsets.only(bottom: 16),
// //                               // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
// //                               decoration: BoxDecoration(
// //                                   color: Colors.white,
// //                                   border: Border.all(color: First_Blue),
// //                                   borderRadius: BorderRadius.circular(8)),
// //                               child: Column(
// //                                 crossAxisAlignment:
// //                                 CrossAxisAlignment.start,
// //                                 children: [
// //                                   Container(
// //                                     height: 35,
// //                                     padding:
// //                                     EdgeInsets.fromLTRB(10, 0, 1, 0),
// //                                     decoration: BoxDecoration(
// //                                       borderRadius: BorderRadius.vertical(
// //                                           top: Radius.circular(7)),
// //                                       color: First_Blue,
// //                                     ),
// //                                     child: Row(
// //                                       mainAxisAlignment:
// //                                       MainAxisAlignment.spaceBetween,
// //                                       // crossAxisAlignment: CrossAxisAlignment.start,
// //                                       children: [
// //                                         // SizedBox(),
// //                                         Text(
// //                                           "Reference",
// //                                           style: TextStyle(
// //                                               color: Colors.white,
// //                                               fontSize: 18,
// //                                               fontWeight: FontWeight.bold),
// //                                         ),
// //                                         IconButton(
// //                                             onPressed: () {
// //                                               setState(() {
// //                                                 Global.reference_Data.remove(e);
// //                                               });
// //
// //                                             },
// //                                             icon: Icon(
// //                                               Icons.delete,
// //                                               size: 20,
// //                                               color: Colors.white,
// //                                             ))
// //                                       ],
// //                                     ),
// //                                   ),
// //                                   SizedBox(
// //                                     height: 16,
// //                                   ),
// //
// //                                   //Name
// //                                   Padding(
// //                                     padding:
// //                                     EdgeInsets.fromLTRB(16, 0, 16, 16),
// //                                     child: TextFormField(
// //                                       keyboardType: TextInputType.name,
// //                                       textInputAction: TextInputAction.next,
// //                                       initialValue: e['name'],
// //                                       style: TextStyle(color: First_Blue),
// //                                       // validator: (val){
// //                                       //   if(val!.isEmpty)
// //                                       //   {
// //                                       //     return "Please Enter Your Course / Degree !!";
// //                                       //   }
// //                                       //   else
// //                                       //   {
// //                                       //     return null;
// //                                       //   }
// //                                       // },
// //
// //                                       decoration: InputDecoration(
// //                                           focusColor: First_Blue,
// //                                           // hintText: "Course / Degree",
// //                                           labelText: "Reference Name",
// //                                           hintStyle:
// //                                           TextStyle(color: Third_Blue),
// //                                           labelStyle: TextStyle(
// //                                             fontSize: 20,
// //                                             color: Third_Blue,
// //                                           ),
// //                                           focusedBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: First_Blue,
// //                                                 width: 2,
// //                                               )),
// //                                           enabledBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: Second_Blue,
// //                                               )),
// //                                           border: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                   color: Four_Blue))),
// //
// //                                       onChanged: (val) {
// //                                         setState(() {
// //                                           Global.reference_Data[Global.reference_Data.indexOf(e)]['name'] = val;
// //                                         });
// //                                       },
// //                                     ),
// //                                   ),
// //
// //                                   //Designation
// //                                   Padding(
// //                                     padding:
// //                                     EdgeInsets.fromLTRB(16, 0, 16, 16),
// //                                     child: TextFormField(
// //                                       keyboardType: TextInputType.name,
// //                                       textInputAction: TextInputAction.next,
// //                                       initialValue: e['designation'],
// //
// //                                       style: TextStyle(color: First_Blue),
// //                                       // validator: (val){
// //                                       //   if(val!.isEmpty)
// //                                       //   {
// //                                       //     return "Please Enter School / University !!";
// //                                       //   }
// //                                       //   else
// //                                       //   {
// //                                       //     return null;
// //                                       //   }
// //                                       // },
// //
// //                                       decoration: InputDecoration(
// //                                           focusColor: First_Blue,
// //                                           // hintText: "School University",
// //                                           labelText: "Ex.Manager,Engineer",
// //                                           hintStyle:
// //                                           TextStyle(color: Third_Blue),
// //                                           labelStyle: TextStyle(
// //                                             fontSize: 20,
// //                                             color: Third_Blue,
// //                                           ),
// //                                           focusedBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: First_Blue,
// //                                                 width: 2,
// //                                               )),
// //                                           enabledBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: Second_Blue,
// //                                               )),
// //                                           border: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                   color: Four_Blue))),
// //                                       onChanged: (val) {
// //                                         setState(() {
// //
// //                                           Global.reference_Data[Global.reference_Data.indexOf(e)]['designation'] = val;
// //                                         });
// //                                       },
// //                                     ),
// //                                   ),
// //
// //                                   //Email
// //                                   Padding(
// //                                     padding:
// //                                     EdgeInsets.fromLTRB(16, 0, 16, 16),
// //                                     child: TextFormField(
// //                                       keyboardType: TextInputType.emailAddress,
// //                                       textInputAction: TextInputAction.next,
// //                                       initialValue: e['email'],
// //                                       style: TextStyle(color: First_Blue),
// //                                       // validator: (val){
// //                                       //   if(val!.isEmpty)
// //                                       //   {
// //                                       //     return "Please Enter Grade / Score !!";
// //                                       //   }
// //                                       //   else
// //                                       //   {
// //                                       //     return null;
// //                                       //   }
// //                                       // },
// //
// //                                       decoration: InputDecoration(
// //                                           focusColor: First_Blue,
// //                                           // hintText: "Grade / Score",
// //                                           labelText: "Email",
// //                                           hintStyle:
// //                                           TextStyle(color: Third_Blue),
// //                                           labelStyle: TextStyle(
// //                                             fontSize: 20,
// //                                             color: Third_Blue,
// //                                           ),
// //                                           focusedBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: First_Blue,
// //                                                 width: 2,
// //                                               )),
// //                                           enabledBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: Second_Blue,
// //                                               )),
// //                                           border: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                   color: Four_Blue))),
// //                                       onChanged: (val) {
// //                                         setState(() {
// //
// //                                           Global.reference_Data[Global.reference_Data.indexOf(e)]['email'] = val;
// //                                         });
// //                                       },
// //                                     ),
// //                                   ),
// //
// //                                   //Phone
// //                                   Padding(
// //                                     padding:
// //                                     EdgeInsets.fromLTRB(16, 0, 16, 16),
// //                                     child: TextFormField(
// //                                       keyboardType: TextInputType.phone,
// //                                       textInputAction: TextInputAction.next,
// //                                       initialValue: e['phone'],
// //                                       style: TextStyle(color: First_Blue),
// //                                       // validator: (val){
// //                                       //   if(val!.isEmpty)
// //                                       //   {
// //                                       //     return "Please Enter Year !!";
// //                                       //   }
// //                                       //   else
// //                                       //   {
// //                                       //     return null;
// //                                       //   }
// //                                       // },
// //
// //                                       decoration: InputDecoration(
// //                                           focusColor: First_Blue,
// //
// //                                           labelText: "Phone Number",
// //                                           hintStyle:
// //                                           TextStyle(color: Third_Blue),
// //                                           labelStyle: TextStyle(
// //                                             fontSize: 20,
// //                                             color: Third_Blue,
// //                                           ),
// //                                           focusedBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: First_Blue,
// //                                                 width: 2,
// //                                               )),
// //                                           enabledBorder: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                 color: Second_Blue,
// //                                               )),
// //                                           border: OutlineInputBorder(
// //                                               borderRadius:
// //                                               BorderRadius.circular(8),
// //                                               borderSide: BorderSide(
// //                                                   color: Four_Blue))),
// //                                       onChanged: (val) {
// //                                         setState(() {
// //
// //                                           Global.reference_Data[Global.reference_Data.indexOf(e)]['phone'] = val;
// //                                         });
// //                                       },
// //                                     ),
// //                                   ),
// //                                   Spacer(),
// //                                   Container(
// //                                       height: 35,
// //                                       width: double.infinity,
// //                                       // padding: EdgeInsets.fromLTRB(0,0,0,0),
// //                                       decoration: BoxDecoration(
// //                                         borderRadius: BorderRadius.vertical(
// //                                             bottom: Radius.circular(7)),
// //                                         color: First_Blue,
// //                                       ),
// //                                       alignment: Alignment.center,
// //                                       child: Row(
// //                                         mainAxisAlignment: MainAxisAlignment.center,
// //                                         children: [
// //                                           // IconButton(
// //                                           //     onPressed: (){
// //                                           //       setState(() {
// //                                           //
// //                                           //         if(Global.reference_Data.length > 1 && (Global.reference_Data.indexOf(e) > 0))
// //                                           //           {
// //                                           //               Map tmp = e;
// //                                           //               Global.reference_Data[Global.reference_Data.indexOf(e)] = Global.reference_Data[(Global.reference_Data.indexOf(e))-1];
// //                                           //               Global.reference_Data[(Global.reference_Data.indexOf(e))-1] = tmp;
// //                                           //
// //                                           //           }
// //                                           //       });
// //                                           //     },
// //                                           //      icon: Icon(Icons.move_up,size: 25,color: Colors.white,)
// //                                           // ),
// //                                           //
// //                                           // SizedBox(
// //                                           //   width: 10,
// //                                           // ),
// //                                           // IconButton(
// //                                           //     onPressed: (){
// //                                           //       setState(() {
// //                                           //
// //                                           //         if(Global.reference_Data.length > 1 && (Global.reference_Data.indexOf(e) < (Global.reference_Data.length) ))
// //                                           //         {
// //                                           //           Map tmp={
// //                                           //             'name': e['name'],
// //                                           //             'designation': e['designation'],
// //                                           //             'email': e['email'],
// //                                           //             'phone': e['phone'],
// //                                           //           };
// //                                           //           Global.reference_Data[Global.reference_Data.indexOf(e)]['name'] = Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['name'];
// //                                           //           Global.reference_Data[Global.reference_Data.indexOf(e)]['designation'] = Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['designation'];
// //                                           //           Global.reference_Data[Global.reference_Data.indexOf(e)]['email'] = Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['email'];
// //                                           //           Global.reference_Data[Global.reference_Data.indexOf(e)]['phone'] = Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['phone'];
// //                                           //
// //                                           //           Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['name']=tmp['name'];
// //                                           //          Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['designation']=tmp['designation'];
// //                                           //          Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['email']=tmp['email'];
// //                                           //           Global.reference_Data[(Global.reference_Data.indexOf(e))+1]['phone']=tmp['phone'];
// //                                           //           // Global.reference_Data[(Global.reference_Data.indexOf(e))+1] = tmp;
// //                                           //
// //                                           //         }
// //                                           //       });
// //                                           //     },
// //                                           //     icon: Icon(Icons.move_down,size: 25,color: Colors.white,)
// //                                           // ),
// //                                           //
// //                                           // Spacer(),
// //                                           TextButton(
// //                                             onPressed: () {
// //
// //                                               setState(() {
// //                                                 print("Saved called");
// //                                                 Global.reference_Data.forEach((element) {
// //                                                   // element['visibility'] = false;
// //                                                   print("Set visibility");
// //                                                   // Global.education_Data[Global.education_Data.indexOf(element)]['visibility'] = true;
// //                                                   Global.reference_Data[Global.reference_Data.indexOf(element)]['visibility'] = true;
// //                                                 });
// //                                               });
// //                                             },
// //                                             child: Text(
// //                                               "Save",
// //                                               style: TextStyle(
// //                                                   color: Colors.white,
// //                                                   fontSize: 18,
// //                                                   fontWeight: FontWeight.bold),
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       )),
// //                                 ],
// //                               ),
// //                             );
// //                           }).toList(),
// //
// //                       ]
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             floatingActionButton: FloatingActionButton.extended(
// //               onPressed: () {
// //                 FocusManager.instance.primaryFocus!.unfocus();
// //
// //                 setState(() {
// //                   Global.reference_Data.forEach((element) {
// //                     Global.reference_Data[Global.reference_Data.indexOf(element)]['visibility'] = true;
// //                     print(element);
// //                   });
// //
// //                   Global.reference_Data.add({'name': "",
// //                     'designation': "",
// //                     'email': "",
// //                     'Phone': "",
// //                     'visibility': false,});
// //                 });
// //               },
// //               backgroundColor: First_Blue,
// //               icon: Icon(
// //                 Icons.add,
// //                 size: 25,
// //                 color: Colors.white,
// //               ),
// //               label: Text(
// //                 "Add",
// //                 style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold),
// //               ),
// //             )
// //         ),
// //
// //       ),
// //     );
// //   }
// // }
// //
