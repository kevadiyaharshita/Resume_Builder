import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/Information_count.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/myBackButton.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    if(Global.course.isEmpty && Global.school.isEmpty && Global.grade.isEmpty && Global.year.isEmpty)
      {
        Global.course = List.generate(1, (index) => TextEditingController());
        Global.school = List.generate(1, (index) => TextEditingController());
        Global.grade = List.generate(1, (index) => TextEditingController());
        Global.year = List.generate(1, (index) => TextEditingController());
      }
  }

  @override
  void dispose() {
    setState(() {
      for(int i = 0 ; i < Global.course.length ; i++)
      {
        print("Dispose");
        if(Global.course[i].text.isEmpty && Global.school[i].text.isEmpty && Global.grade[i].text.isEmpty && Global.year[i].text.isEmpty)
        {
          print("Removed $i");
          Global.course.removeAt(i);
          Global.school.removeAt(i);
          Global.grade.removeAt(i);
          Global.year.removeAt(i);
        }
      }
      education_count();
    });
  }

  @override
  Widget build(BuildContext context) {

    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(Global.course.length, (index) {
                  Counter ++;
                  return Container(
                    width: double.infinity,
                    height: (h / 2.25) + 35,
                    margin: EdgeInsets.only(bottom: 16),
                    // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: First_Blue),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          padding:
                          EdgeInsets.fromLTRB(10, 0, 1, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(7)),
                            color: First_Blue,
                          ),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // SizedBox(),
                              Text(
                                "Education-$Counter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      formkey.currentState!.reset();
                                      Global.course.removeAt(index);
                                      Global.school.removeAt(index);
                                      Global.grade.removeAt(index);
                                      Global.year.removeAt(index);

                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text("Succesfully Deleted.."),
                                            backgroundColor: First_Blue,
                                            behavior: SnackBarBehavior.floating,
                                            duration: Duration(seconds: 1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            margin: EdgeInsets.all(25),
                                            dismissDirection: DismissDirection.horizontal,
                                            // action: SnackBarAction(
                                            //   label: "ok",
                                            //   onPressed: (){
                                            //
                                            //   },
                                            // ),
                                          )

                                      );


                                    });

                                  },
                                  icon: Icon(
                                    Icons.delete,
                                    size: 20,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),

                        //Course/degree
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            // initialValue: e['Course/Degree'],
                            controller: Global.course[index],
                            style: TextStyle(color: First_Blue),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please Enter Your Course / Degree !!";
                              }
                              else
                              {
                                return null;
                              }
                            },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Course / Degree",

                                labelText: "Course / Degree",
                                hintStyle:
                                TextStyle(color: Third_Blue),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Third_Blue,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: First_Blue,
                                      width: 2,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Second_Blue,
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Four_Blue))),
                                    onChanged: (val) {
                                      setState(() {

                                      });
                            },
                          ),
                        ),

                        //School/university
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            // initialValue: e['School/University'],
                            controller: Global.school[index],

                            style: TextStyle(color: First_Blue),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please Enter School / University !!";
                              }
                              else
                              {
                                return null;
                              }
                            },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "School University",
                                labelText: "School University",
                                hintStyle:
                                TextStyle(color: Third_Blue),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Third_Blue,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: First_Blue,
                                      width: 2,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Second_Blue,
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Four_Blue))),
                            onChanged: (val) {
                              setState(() {

                              });
                            },
                          ),
                        ),

                        //Grade/Score
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            // initialValue: e['Grade/Score'],
                            controller: Global.grade[index],

                            style: TextStyle(color: First_Blue),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please Enter Grade / Score !!";
                              }
                              else
                              {
                                return null;
                              }
                            },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Grade / Score",
                                labelText: "Grade / Score",
                                hintStyle:
                                TextStyle(color: Third_Blue),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Third_Blue,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: First_Blue,
                                      width: 2,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Second_Blue,
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Four_Blue))),
                            onChanged: (val) {
                              setState(() {

                              });
                            },
                          ),
                        ),

                        //Year
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(16, 0, 16, 16),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            // initialValue: e['Year'],
                            controller: Global.year[index],

                            style: TextStyle(color: First_Blue),
                            validator: (val){
                              if(val!.isEmpty)
                              {
                                return "Please Enter Year !!";
                              }
                              else
                              {
                                return null;
                              }
                            },

                            decoration: InputDecoration(
                                focusColor: First_Blue,
                                // hintText: "Year",
                                labelText: "Year",
                                hintStyle:
                                TextStyle(color: Third_Blue),
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Third_Blue,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: First_Blue,
                                      width: 2,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                      color: Second_Blue,
                                    )),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Four_Blue))),

                                  onChanged: (val) {
                                    setState(() {


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
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(7)),
                              color: First_Blue,
                            ),
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                FocusManager
                                    .instance.primaryFocus!
                                    .unfocus();

                                setState(() {

                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text("Succesfully Saved!!.."),
                                            backgroundColor: First_Blue,
                                            behavior: SnackBarBehavior.floating,
                                            duration: Duration(seconds: 2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            margin: EdgeInsets.all(10),
                                            dismissDirection: DismissDirection.horizontal,


                                          ),

                                      );


                                });
                              },
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                  );
                }
                )
              ),
            ),
          ),
        ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              FocusManager.instance.primaryFocus!.unfocus();
              setState(() {

                    Global.course.add(TextEditingController());
                    Global.school.add(TextEditingController());
                    Global.grade.add(TextEditingController());
                    Global.year.add(TextEditingController());
                   });
              },
            backgroundColor: First_Blue,
            icon: Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            ),
            label: Text(
              "Add",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          )
      ),
      );

  }
}
