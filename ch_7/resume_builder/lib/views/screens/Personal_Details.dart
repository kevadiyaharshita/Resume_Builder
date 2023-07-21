import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';
import '../components/myAppBar.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {

  TextEditingController DOB_controller = TextEditingController(text: Global.DOB);
  TextEditingController Marital_controller = TextEditingController(text: Global.maritalStatus);
  TextEditingController Nationality_controller = TextEditingController(text: Global.nationality);

  List languages = ['English','Hindi','Gujrati'];
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar:  myAppBar(context,"Personal_Details"),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              // padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: First_Blue),
                  borderRadius:BorderRadius.circular(8)
              ),

              child: Form(

                key: formkey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //DOB
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: TextFormField(

                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: First_Blue),
                        // initialValue: Global.Name,
                        controller: DOB_controller,
                        // validator: (val){
                        //   if(val!.isEmpty)
                        //   {
                        //     return "Please Enter DOB !!";
                        //   }
                        //   else
                        //   {
                        //     return null;
                        //   }
                        // },

                        decoration: InputDecoration(
                            iconColor: First_Blue,
                            focusColor: First_Blue,
                            hintText: "Enter DOB",
                            labelText: "DOB",
                            hintStyle: TextStyle(color: Third_Blue),
                            labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                            prefixIcon: Icon(
                              Icons.date_range,
                              color: Third_Blue,
                            ),
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
                            Global.DOB = val;
                          });
                        },
                      ),
                    ),
                    // SizedBox(height: 16,),

                   //MaritalStatus
                   Padding(
                     padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                     child: Container(
                       width: double.infinity,
                       height: 150,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color: Second_Blue),
                         ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                               padding: EdgeInsets.fromLTRB(16, 7, 16, 0),
                               child: Text("Marital Status",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Second_Blue),)
                           ),

                           //MaritalStatus
                           RadioListTile(
                             title: Text("Married",style: TextStyle(color: Second_Blue,fontSize: 18),),

                             value: "Married" ,
                             groupValue: Global.maritalStatus,
                             onChanged: (val){
                               setState(() {
                                 Global.maritalStatus = val;
                               });
                             },
                           ),
                           RadioListTile(
                             title: Text("Unmarried",style: TextStyle(color: Second_Blue,fontSize: 18),),
                             value: "Unmarried" ,
                             groupValue: Global.maritalStatus,
                             onChanged: (val){
                               setState(() {
                                 Global.maritalStatus = val;
                               });
                             },
                           ),

                         ],
                       ),

                       ),
                   ),
                    // SizedBox(height: 16,),

                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Container(
                        width: double.infinity,
                        height: 210,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Second_Blue),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(16, 7, 16, 0),
                                child: Text("Languages",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Second_Blue),)
                            ),
                            ...languages.map(
                                    (e) => CheckboxListTile(
                                    title: Text(e,style: TextStyle(color: Second_Blue,fontSize: 18)),
                                    activeColor: First_Blue,
                                    // selectedTileColor: Six_Blue,

                                    controlAffinity: ListTileControlAffinity.leading,
                                    value: Global.languages.contains(e),
                                    onChanged: (val){
                                      setState(() {
                                        if(Global.languages.contains(e))
                                        {
                                          Global.languages.remove(e);
                                        }
                                        else
                                        {
                                          Global.languages.add(e);
                                        }
                                      });
                                    }
                                )
                            ).toList(),
                          ],
                        ),

                      ),
                    ),

                   //Languages


                    //Nationality
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: TextFormField(

                        // textAlign: TextAlign.start,

                        style: TextStyle(color: First_Blue),
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.newline,
                        // initialValue: Global.address,
                        controller: Nationality_controller,
                        // validator: (val){
                        //   if(val!.isEmpty)
                        //   {
                        //     return "Please Enter Nation !!";
                        //   }
                        //   else
                        //   {
                        //     return null;
                        //   }
                        // },
                        decoration: InputDecoration(
                            iconColor: First_Blue,
                            focusColor: First_Blue,
                            hintText: "India",
                            labelText: "Nation",
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
                            Global.nationality = val;
                          });
                        },
                      ),
                    ),


                    SizedBox(height: 16,),
                    Container(
                      height: 35,
                      width: double.infinity,
                      // padding: EdgeInsets.fromLTRB(0,0,0,0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(7)),
                        color: First_Blue,
                      ),
                      // child: Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: [
                      //     TextButton(onPressed: (){
                      //       setState(() {
                      //         formkey.currentState!.reset();
                      //       });
                      //     },
                      //         child: Text("Clear", style: TextStyle(
                      //             color: Colors.white,
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold),)
                      //     ),
                      //     Spacer(),
                      alignment: Alignment.center,
                         child: TextButton(onPressed: (){
                            bool validated = formkey.currentState!.validate();
                            setState(() {
                              if(validated){
                                formkey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Successfully Saved!!",style: TextStyle(color: Colors.white),),
                                    backgroundColor:First_Blue,
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(seconds: 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    dismissDirection: DismissDirection.horizontal,
                                    // action: SnackBarAction(
                                    //   label: "ok",
                                    //   onPressed: (){},
                                    // ),

                                  ),
                                );
                              }
                              else
                              {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Failed to Saved!!",style: TextStyle(color: First_Blue)),
                                    backgroundColor:Six_Blue,
                                    behavior: SnackBarBehavior.floating,
                                    duration: Duration(seconds: 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.all(10),
                                    dismissDirection: DismissDirection.horizontal,
                                    // action: SnackBarAction(
                                    //   label: "ok",
                                    //   onPressed: (){},
                                    // ),

                                  ),
                                );
                              }
                            });

                          },
                              child: Text("Save", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),)
                          ),

                        // ],
                      // ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        // backgroundColor: Colors.grey.shade100,
      ),
    );
  }
}
