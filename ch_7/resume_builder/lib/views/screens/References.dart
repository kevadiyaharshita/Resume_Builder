import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/Information_count.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/myAppBar.dart';
import '../components/myBackButton.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    if(Global.reference_name.isEmpty && Global.reference_designation.isEmpty && Global.reference_email.isEmpty && Global.reference_phone.isEmpty)
    {
      Global.reference_name = List.generate(1, (index) => TextEditingController());
      Global.reference_designation = List.generate(1, (index) => TextEditingController());
      Global.reference_email = List.generate(1, (index) => TextEditingController());
      Global.reference_phone = List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    setState(() {
      for(int i = 0 ; i < Global.reference_name.length ; i++)
      {
        print("Dispose");
        if(Global.reference_name[i].text.isEmpty && Global.reference_designation[i].text.isEmpty && Global.reference_email[i].text.isEmpty && Global.reference_phone[i].text.isEmpty)
        {
          Global.reference_name.removeAt(i);
          Global.reference_designation.removeAt(i);
          Global.reference_email.removeAt(i);
          Global.reference_phone.removeAt(i);
        }
      }
      reference_count();
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
          appBar: myAppBar(context, "References"),


          body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(Global.reference_name.length, (index) {
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
                                    "Reference-$Counter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          formkey.currentState!.reset();
                                          Global.reference_name.removeAt(index);
                                          Global.reference_designation.removeAt(index);
                                          Global.reference_email.removeAt(index);
                                          Global.reference_phone.removeAt(index);

                                          ScaffoldMessenger.of(context).showSnackBar(
                                              SnackBar(
                                                content: Text("Succesfully Deleted.."),
                                                backgroundColor: First_Blue,
                                                behavior: SnackBarBehavior.floating,
                                                duration: Duration(seconds: 5),
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

                            //Reference_name
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                // initialValue: e['Course/Degree'],
                                controller: Global.reference_name[index],
                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Reference_name !!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "Reference Name",
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
                                controller: Global.reference_designation[index],

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

                            //Email
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.reference_email[index],

                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please enter Email!!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "Email",
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


                            //phone
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 0, 16, 16),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                controller: Global.reference_phone[index],
                                style: TextStyle(color: First_Blue),
                                validator: (val){
                                  if(val!.isEmpty)
                                  {
                                    return "Please Enter Phone!!";
                                  }
                                  else
                                  {
                                    return null;
                                  }
                                },

                                decoration: InputDecoration(
                                    focusColor: First_Blue,
                                    labelText: "Phone Number",
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

                Global.reference_name.add(TextEditingController());
                Global.reference_designation.add(TextEditingController());
                Global.reference_email.add(TextEditingController());
                Global.reference_phone.add(TextEditingController());
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
          )),
    );

  }
}
