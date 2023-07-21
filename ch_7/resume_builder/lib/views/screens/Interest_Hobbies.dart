import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/Information_count.dart';

class Interest_Hobbies extends StatefulWidget {
  const Interest_Hobbies({Key? key}) : super(key: key);

  @override
  State<Interest_Hobbies> createState() => _Interest_HobbiesState();
}

class _Interest_HobbiesState extends State<Interest_Hobbies> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void initState() {
    if(Global.interest_hobbies.isEmpty)
    {
      Global.interest_hobbies = List.generate(1, (index) => TextEditingController());
    }
  }

  @override
  void dispose() {
    Global.interest_hobbies.removeWhere((element) => element.text.isEmpty);
    technival_skills_count();
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
          appBar: myAppBar(context, "Interest/Hobbies"),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Form(

                key: formkey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(Global.interest_hobbies.length, (index) {
                      Counter ++;
                      return Container(
                        width: double.infinity,
                        height: 135,
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
                                    "Interest/Hobbies-$Counter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          formkey.currentState!.reset();
                                          Global.interest_hobbies.removeAt(index);
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

                            //Technical_skills
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(16, 16, 16, 16),
                              child: TextFormField(

                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                controller: Global.interest_hobbies[index],
                                style: TextStyle(color: First_Blue),
                                decoration: InputDecoration(
                                    focusColor: First_Blue,

                                    labelText: "Interest/Hobbies",
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
                Global.interest_hobbies.add(TextEditingController());
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
