import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/Information_count.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    if(Global.achievements.isEmpty && Global.achievements_details.isEmpty)
    {
      Global.achievements = List.generate(1, (index) => TextEditingController());
      Global.achievements_details = List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    setState(() {
      for(int i = 0 ; i < Global.achievements.length ; i++)
      {
        print("Dispose");
        if(Global.achievements[i].text.isEmpty && Global.achievements_details[i].text.isEmpty )
          {
          print("Removed $i");
          Global.achievements.removeAt(i);
          Global.achievements_details.removeAt(i);

        }
      }
      achievements_count();
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
          appBar: myAppBar(context, "Achievements"),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(

                key: formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(Global.achievements.length, (index) {
                      Counter ++;
                      return Container(
                        width: double.infinity,
                        height: 230,
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
                                    "Achievements-$Counter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          formkey.currentState!.reset();
                                          Global.achievements.removeAt(index);
                                          Global.achievements_details.removeAt(index);
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

                            //Achievements
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 16, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.achievements[index],
                                style: TextStyle(color: First_Blue),
                                decoration: InputDecoration(
                                    focusColor: First_Blue,

                                    labelText: "Achievements",
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

                              ),
                            ),

                            //Achievements_details
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 16, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.achievements_details[index],
                                style: TextStyle(color: First_Blue),
                                decoration: InputDecoration(
                                    focusColor: First_Blue,

                                    labelText: "Details",
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

                              ),
                            ),
                            // SizedBox(
                            //   height: 16,
                            // ),


                            // Spacer(),
                            // Container(
                            //     height: 35,
                            //     width: double.infinity,
                            //     // padding: EdgeInsets.fromLTRB(0,0,0,0),
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.vertical(
                            //           bottom: Radius.circular(7)),
                            //       color: First_Blue,
                            //     ),
                            //     alignment: Alignment.center,
                            //     child: TextButton(
                            //       onPressed: () {
                            //         FocusManager
                            //             .instance.primaryFocus!
                            //             .unfocus();
                            //
                            //         setState(() {
                            //
                            //           ScaffoldMessenger.of(context).showSnackBar(
                            //             SnackBar(
                            //               content: Text("Succesfully Saved!!.."),
                            //               backgroundColor: First_Blue,
                            //               behavior: SnackBarBehavior.floating,
                            //               duration: Duration(seconds: 2),
                            //               shape: RoundedRectangleBorder(
                            //                 borderRadius: BorderRadius.circular(20),
                            //               ),
                            //               margin: EdgeInsets.all(10),
                            //               dismissDirection: DismissDirection.horizontal,
                            //
                            //
                            //             ),
                            //
                            //           );
                            //
                            //
                            //         });
                            //       },
                            //       child: Text(
                            //         "Save",
                            //         style: TextStyle(
                            //             color: Colors.white,
                            //             fontSize: 18,
                            //             fontWeight: FontWeight.bold),
                            //       ),
                            //     )),
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
                Global.achievements.add(TextEditingController());
                Global.achievements_details.add(TextEditingController());
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
