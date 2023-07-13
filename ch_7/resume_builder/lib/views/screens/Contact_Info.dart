import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../components/myAppBar.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int currentIndex = 0;
  String name = "", Email ="", phone ="",Address = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  myAppBar(context,"Contact Information"),

       body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
               child: Row(
                 children: [
                   Expanded (
                     child: InkWell(
                       onTap: (){
                        setState(() {
                          currentIndex = 0;
                        });
                       },
                       child: Container(
                         height: 60,
                         decoration: BoxDecoration(
                             border:(currentIndex == 0)? Border(bottom: BorderSide(width: 3,color: Colors.white)):null,
                           color: First_Blue,
                         ),
                         alignment: Alignment.center,
                         child: Text("Contact",style: TextStyle(fontSize: 18,color: Colors.white),),
                       ),
                     ),
                   ),
                   Expanded (
                     child: InkWell(
                       onTap: (){
                         setState(() {
                           currentIndex = 1;
                         });
                       },
                       child: Container(
                         height: 60,
                         decoration: BoxDecoration(
                               border:(currentIndex == 1)? Border(bottom: BorderSide(width: 3,color: Colors.white)):null,
                           color: First_Blue,
                         ),
                         alignment: Alignment.center,
                         child: Text("Photo",style: TextStyle(fontSize: 18,color: Colors.white),),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
                 padding: EdgeInsets.all(16),
               child: IndexedStack(
                 index: currentIndex,
                 children: [
                   Container(
                     width: double.infinity,
                     padding: EdgeInsets.all(16),
                     color: Colors.white,
                     child: Form(

                       child: Column(
                         children: [

                           //Name
                           TextFormField(
                             keyboardType: TextInputType.name,
                             
                             decoration: InputDecoration(
                               iconColor: First_Blue,
                               focusColor: First_Blue,
                               hintText: "Enter Name",
                               labelText: "Name",
                               hintStyle: TextStyle(color: Third_Blue),
                               labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                               prefixIcon: Icon(
                                 Icons.person,
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
                                  name = val;
                                });
                             },
                           ),
                           SizedBox(height: 16,),

                           //Email
                           TextFormField(

                             keyboardType: TextInputType.emailAddress,
                             decoration: InputDecoration(
                                 iconColor: First_Blue,

                                 focusColor: First_Blue,
                                 hintText: "Email",
                                 labelText: "Email",
                                 hintStyle: TextStyle(color: Third_Blue),
                                 labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                                 prefixIcon: Icon(
                                   Icons.email_rounded,
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
                                 Email = val;
                               });
                             },
                           ),

                           SizedBox(height: 16,),

                           //Phone
                           TextFormField(

                             keyboardType: TextInputType.phone,
                             decoration: InputDecoration(
                                 iconColor: First_Blue,

                                 focusColor: First_Blue,
                                 hintText: "Phone",
                                 labelText: "Phone",
                                 hintStyle: TextStyle(color: Third_Blue),
                                 labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                                 prefixIcon: Icon(
                                   Icons.phone,
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
                                 phone = val;
                               });
                             },
                           ),

                           SizedBox(height: 16,),

                           //Address
                           TextFormField(
                             maxLines: 3,
                             // textAlign: TextAlign.start,

                             keyboardType: TextInputType.streetAddress,
                             decoration: InputDecoration(
                                 iconColor: First_Blue,

                                 focusColor: First_Blue,
                                 hintText: "Address",
                                 labelText: "Address",
                                 hintStyle: TextStyle(color: Third_Blue),
                                 labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
                                 prefixIcon: Icon(
                                   Icons.location_on,
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
                                 Address = val;
                               });
                             },
                           ),


                         ],
                       ),
                     ),
                   )
                 ],
               ),
             ),

           ],
         ),
       ),
    );
  }
}
