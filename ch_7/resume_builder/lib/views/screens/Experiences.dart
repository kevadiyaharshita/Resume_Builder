import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/Information_count.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  @override
  void initState() {
    if(Global.experience_company_name.isEmpty && Global.experience_designation.isEmpty && Global.experience_startingdate.isEmpty && Global.experience_endingdate.isEmpty && Global.experience_current_working.isEmpty && Global.experience_details.isEmpty)
    {
      Global.experience_company_name = List.generate(1, (index) => TextEditingController());
      Global.experience_designation = List.generate(1, (index) => TextEditingController());
      Global.experience_startingdate = List.generate(1, (index) => TextEditingController());
      Global.experience_endingdate = List.generate(1, (index) => TextEditingController());
      Global.experience_current_working = List.generate(1, (index) => false);
      Global.experience_details = List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    setState(() {
      for(int i = 0 ; i < Global.course.length ; i++)
      {
        print("Dispose");
        if(Global.experience_company_name[i].text.isEmpty && Global.experience_designation[i].text.isEmpty && Global.experience_startingdate[i].text.isEmpty && Global.experience_endingdate[i].text.isEmpty && Global.experience_current_working[i]==null && Global.experience_details[i].text.isEmpty)
        {
          print("Removed $i");
          Global.experience_company_name.removeAt(i);
          Global.experience_designation.removeAt(i);
          Global.experience_startingdate.removeAt(i);
          Global.experience_endingdate.removeAt(i);
          Global.experience_current_working.removeAt(i);
          Global.experience_details.removeAt(i);
        }
      }
       experience_count();
    });
  }

  bool curnt_working = false;
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
        appBar: myAppBar(context, "Experiences"),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(

              key: formkey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(Global.experience_company_name.length, (index) {
                    Counter ++;
                    return Container(
                      width: double.infinity,
                      height: h-300,
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
                                  "Experience-$Counter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        formkey.currentState!.reset();
                                        Global.experience_company_name.removeAt(index);
                                        Global.experience_designation.removeAt(index);
                                        Global.experience_startingdate.removeAt(index);
                                        Global.experience_endingdate.removeAt(index);
                                        Global.experience_current_working.removeAt(index);
                                        Global.experience_details.removeAt(index);


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

                          //Company_name
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: TextFormField(

                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              // initialValue: e['Course/Degree'],
                              controller: Global.experience_company_name[index],
                              style: TextStyle(color: First_Blue),
                              validator: (val){
                                if(val!.isEmpty)
                                {
                                  return "Please Enter Your Company Name !!";
                                }
                                else
                                {
                                  return null;
                                }
                              },

                              decoration: InputDecoration(
                                  focusColor: First_Blue,

                                  labelText: "Company Name",
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

                          //Designation
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,

                              controller: Global.experience_designation[index],

                              style: TextStyle(color: First_Blue),
                              validator: (val){
                                if(val!.isEmpty)
                                {
                                  return "Please Enter Designation !!";
                                }
                                else
                                {
                                  return null;
                                }
                              },

                              decoration: InputDecoration(
                                  focusColor: First_Blue,
                                  labelText: "Designation",
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

                          //Details
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(16, 0, 16, 16),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,

                              maxLines: 2,
                              controller: Global.experience_details[index],

                              style: TextStyle(color: First_Blue),
                              validator: (val){
                                if(val!.isEmpty)
                                {
                                  return "Please Enter Details !!";
                                }
                                else
                                {
                                  return null;
                                }
                              },

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
                              onChanged: (val) {
                                setState(() {

                                });
                              },
                            ),
                          ),

                          //Date
                          Padding(
                            padding:
                            EdgeInsets.fromLTRB(16, 0, 16, 0),
                            child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: First_Blue),

                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(16, 7, 16, 0),
                                        child: Text("Languages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Second_Blue),)
                                    ),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(16, 7, 16, 0),
                                          child: Checkbox(
                                            onChanged: (val){
                                              setState(() {
                                              Global.experience_current_working[index] = val!;
                                               if(Global.experience_current_working[index])
                                                 {
                                                   Global.experience_endingdate[index].text="Present";
                                                 }
                                              });
                                            },
                                            value: Global.experience_current_working[index],
                                          )
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: SizedBox(
                                            width: 150,
                                            child: TextFormField(
                                              keyboardType: TextInputType.name,
                                              textInputAction: TextInputAction.next,
                                              controller: Global.experience_startingdate[index],
                                              style: TextStyle(color: First_Blue),

                                              decoration: InputDecoration(
                                                  focusColor: First_Blue,
                                                  labelText: "Starting Date",
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
                                        ),
                                        SizedBox(width: 5,),
                                        Expanded(
                                          child: SizedBox(
                                            width: 150,
                                            child: TextFormField(
                                              keyboardType: TextInputType.name,
                                              textInputAction: TextInputAction.next,
                                              controller: Global.experience_endingdate[index],
                                              readOnly: Global.experience_current_working[index],

                                              style: TextStyle(color: First_Blue),

                                              decoration: InputDecoration(
                                                  focusColor: First_Blue,
                                                  labelText: "Ending Date",
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
                                        duration: Duration(seconds: 1),
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

                Global.experience_company_name.add(TextEditingController());
                Global.experience_designation.add(TextEditingController());
                Global.experience_startingdate.add(TextEditingController());
                Global.experience_endingdate.add(TextEditingController());
                Global.experience_details.add(TextEditingController());
                Global.experience_current_working.add(false);
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
