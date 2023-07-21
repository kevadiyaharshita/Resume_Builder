import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/Information_count.dart';
import '../components/myBackButton.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    if(Global.project_Title.isEmpty && Global.project_Link.isEmpty && Global.project_Technologies.isEmpty && Global.project_Role.isEmpty && Global.project_Discription.isEmpty)
    {
      Global.project_Title = List.generate(1, (index) => TextEditingController());
      Global.project_Link= List.generate(1, (index) => TextEditingController());
      Global.project_Technologies = List.generate(1, (index) => TextEditingController());
      Global.project_Role= List.generate(1, (index) => TextEditingController());
      Global.project_Discription= List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    setState(() {
      for(int i = 0 ; i < Global.project_Title.length ; i++)
      {
        print("Dispose");
        if(Global.project_Title[i].text.isEmpty && Global.project_Link[i].text.isEmpty && Global.project_Technologies[i].text.isEmpty && Global.project_Role[i].text.isEmpty && Global.project_Discription[i].text.isEmpty)
        {
          print("Removed $i");
          Global.project_Title.removeAt(i);
          Global.project_Link.removeAt(i);
          Global.project_Technologies.removeAt(i);
          Global.project_Role.removeAt(i);
          Global.project_Discription.removeAt(i);
        }
      }
     project_count();
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
            title: Text("Projects"),
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
                    children: List.generate(Global.project_Title.length, (index) {
                      Counter ++;
                      return Container(
                        width: double.infinity,
                         height: (h / 2.25) + 140,
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
                                    "Project-$Counter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          formkey.currentState!.reset();
                                          Global.project_Title.removeAt(index);
                                          Global.project_Link.removeAt(index);
                                          Global.project_Technologies.removeAt(index);
                                          Global.project_Role.removeAt(index);
                                          Global.project_Discription.removeAt(index);

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
                            SizedBox(
                              height: 16,
                            ),

                            //Project Tiltle
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                // initialValue: e['Course/Degree'],
                                controller: Global.project_Title[index],
                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Your Title !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    // hintText: "Course / Degree",

                                    labelText: "Title",
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

                            //Project_Link
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                // initialValue: e['School/University'],
                                controller: Global.project_Link[index],

                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Link !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    // hintText: "School University",
                                    labelText: "Project Link",
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

                            //Technologies
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                // initialValue: e['Grade/Score'],
                                controller: Global.project_Technologies[index],

                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Technologies !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "Technologies",
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

                            //Role
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.project_Role[index],

                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Your Role !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "My Role",
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

                            //Project Description
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.project_Discription[index],
                                maxLines: 2,
                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Description !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "Description",
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

                Global.project_Title.add(TextEditingController());
                Global.project_Link.add(TextEditingController());
                Global.project_Technologies.add(TextEditingController());
                Global.project_Role.add(TextEditingController());
                Global.project_Discription.add(TextEditingController());
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
