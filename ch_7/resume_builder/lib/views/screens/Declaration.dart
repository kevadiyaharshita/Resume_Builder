import 'package:flutter/material.dart';
import 'package:resume_builder/views/components/myAppBar.dart';

import '../../globals/Global_class.dart';
import '../../utils/Color_utils.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool switchValue = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  TextEditingController declaration_Discription_controller = TextEditingController(text: Global.declaration_discription);
  TextEditingController declaration_Date_controller = TextEditingController(text: Global.declaration_date);
  TextEditingController declaration_Venue_controller = TextEditingController(text: Global.declaration_venue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context, 'Declaration'),

      body:Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: First_Blue),
                borderRadius:BorderRadius.circular(8)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 16),child: Text("Declaration",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: First_Blue),)),
                    Spacer(),
                    Transform.scale(
                      scale: 0.9,
                      child: Switch(
                        value: switchValue,
                        inactiveThumbColor: First_Blue,


                        onChanged: (val){
                          setState(() {
                           switchValue = val;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
                Visibility(
                  visible: switchValue,
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // SizedBox(height: 16,),

                        Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/icons/target.png",scale: 4,color: First_Blue,)
                        ),


                        //Discription
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            maxLines: 2,
                            style: TextStyle(color: First_Blue),
                            // initialValue: Global.Name,
                            controller: declaration_Discription_controller,
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter Name !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                iconColor: First_Blue,
                                focusColor: First_Blue,
                                hintText: "Description",
                                labelText: "Discription",
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
                                Global.declaration_discription = val;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 16,),

                        //Date
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // initialValue: Global.Name,
                            controller: declaration_Date_controller,
                            // validator: (val){
                            //   if(val!.isEmpty)
                            //   {
                            //     return "Please Enter Name !!";
                            //   }
                            //   else
                            //   {
                            //     return null;
                            //   }
                            // },

                            decoration: InputDecoration(
                                iconColor: First_Blue,
                                focusColor: First_Blue,
                                hintText: "Date",
                                labelText: "Date",
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
                                Global.declaration_date= val;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 16,),

                        //Venue
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: TextFormField(

                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(color: First_Blue),
                            // initialValue: Global.Name,
                            controller: declaration_Venue_controller,

                            decoration: InputDecoration(
                                iconColor: First_Blue,
                                focusColor: First_Blue,
                                hintText: "Venue",
                                labelText: "Venue",
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
                                Global.declaration_venue = val;
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
                          //
                          //        Global.declaration_venue = Global.declaration_discription = Global.declaration_date = null;
                          //
                          //         declaration_Venue_controller.clear();
                          //         declaration_Date_controller.clear();
                          //         declaration_Discription_controller.clear();
                          //
                          //       });
                          //     },
                          //         child: Text("Clear", style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 18,
                          //             fontWeight: FontWeight.bold),)
                          //     ),
                          //     Spacer(),
                             child: TextButton(onPressed: (){
                                bool validated = formkey.currentState!.validate();
                                setState(() {
                                  if(validated){
                                    formkey.currentState!.save();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text("Successfully Saved!!",style: TextStyle(color: First_Blue),),
                                        backgroundColor:Six_Blue,
                                        behavior: SnackBarBehavior.floating,
                                        duration: Duration(seconds: 2),
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
                                        duration: Duration(seconds: 2),
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
              ],
            )
          ),
        ),
      ),

    );
  }
}
