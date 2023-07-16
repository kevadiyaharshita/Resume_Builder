import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder/globals/Global_class.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/utils/MyRoutes.dart';
import 'package:resume_builder/views/components/myBackButton.dart';
import '../components/myAppBar.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int currentIndex = 0;

  bool obscure = true;
  RegExp emailRx = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');


  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar:  myAppBar(context,"Contact Information"),
         body: Column(
           children: [
             Expanded(
               child: SizedBox(
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
             ),
             Expanded(
               flex: 12,
               child: Padding(
                   padding: EdgeInsets.all(16),
                 child: IndexedStack(
                   index: currentIndex,

                   children: [

                     SingleChildScrollView(

                       child: Container(
                         width: double.infinity,
                         padding: EdgeInsets.all(16),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(color: Six_Blue),
                           borderRadius:BorderRadius.circular(8)
                         ),

                         child: Form(

                           key: formkey,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           child: Column(
                             children: [

                               //Name
                               TextFormField(

                                 keyboardType: TextInputType.name,
                                 textInputAction: TextInputAction.next,
                                 style: TextStyle(color: First_Blue),
                                 validator: (val){
                                   if(val!.isEmpty)
                                     {
                                       return "Please Enter Name !!";
                                     }
                                   else
                                     {
                                       return null;
                                     }
                                 },

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
                                      Global.Name = val;
                                    });
                                 },
                               ),
                               SizedBox(height: 16,),

                               //Email
                               TextFormField(

                                 keyboardType: TextInputType.emailAddress,

                                 textInputAction: TextInputAction.next,
                                 style: TextStyle(color: First_Blue),
                                 validator: (val){
                                   if(val!.isEmpty)
                                   {
                                     return "Please Enter Email-Address !!";

                                   }
                                   else if(!emailRx.hasMatch(val))
                                     {
                                       return "Please enter valid email !!";

                                     }
                                   else
                                   {
                                     return null;

                                   }
                                 },
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
                                     Global.Email = val;
                                   });
                                 },
                               ),

                               SizedBox(height: 16,),

                               //Phone
                               TextFormField(
                                 style: TextStyle(color: First_Blue),
                                 keyboardType: TextInputType.phone,

                                 textInputAction: TextInputAction.next,
                                 // maxLength: 10,
                                 inputFormatters: [
                                   FilteringTextInputFormatter.digitsOnly,
                                 ],
                                 validator: (val){
                                   if(val!.isEmpty)
                                   {
                                     return "Please Enter Phone Number !!";
                                   }
                                   else if(val.length < 10)
                                     {
                                       return "Number Must Be Of 10 Digits !!";
                                     }
                                   else
                                   {
                                     return null;
                                   }
                                 },
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
                                     prefixText: "+91 ",
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
                                     // phone = val;
                                     Global.Phone = val;
                                   });
                                 },
                               ),

                               SizedBox(height: 16,),

                               //Address
                               TextFormField(
                                 maxLines: 3,
                                 // textAlign: TextAlign.start,

                                 style: TextStyle(color: First_Blue),
                                 keyboardType: TextInputType.streetAddress,
                                 textInputAction: TextInputAction.newline,
                                 validator: (val){
                                   if(val!.isEmpty)
                                   {
                                     return "Please Enter Address !!";
                                   }
                                   else
                                   {
                                     return null;
                                   }
                                 },
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
                                    Global.address = val;
                                   });
                                 },
                               ),
                               SizedBox(height: 16,),
                             ],
                           ),
                         ),
                       ),
                     ),
                     Align(
                       alignment: Alignment.topCenter,
                       child: Container(
                         width: 400,
                         height: 300,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(8),
                           border: Border.all(color: Six_Blue,width: 1),
                           // boxShadow: [
                           //   BoxShadow(
                           //     color: Colors.grey,
                           //     blurRadius: 2
                           //   ),
                           // ],

                         ),
                         alignment: Alignment.center,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               width: 250,
                               height: 250,
                               decoration: BoxDecoration(
                                 color: Six_Blue,
                                 borderRadius: BorderRadius.circular(8),
                                 boxShadow: [
                                   BoxShadow(
                                     color: Colors.grey,
                                     // offset: Offset(0,2),
                                     blurRadius: 2,
                                   ),
                                 ],
                               ),
                               alignment: Alignment.center,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Container(
                                     width: 150,
                                     height: 150,
                                     decoration: BoxDecoration(
                                       color: Five_Blue,
                                       shape: BoxShape.circle,
                                       // border: Border.all(color: Five_Blue),
                                       boxShadow: [
                                         BoxShadow(
                                             color: First_Blue,
                                             blurRadius: 3
                                         )
                                       ],

                                     ),
                                     alignment: Alignment.center,
                                     child: IconButton(
                                       onPressed: (){
                                       },
                                       icon: Icon(Icons.person_3_rounded,size: 120,color: Four_Blue,),
                                     ),
                                   ),
                                   TextButton(
                                     onPressed: (){},
                                     child: Text("Select Photo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: First_Blue,
                                         decoration: TextDecoration.underline,letterSpacing: 1
                                     ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                             IconButton(
                               onPressed: (){

                               },
                               icon: Icon(Icons.delete,size: 30,color: First_Blue,),
                             ),
                           ],
                         ),
                       ),
                     )

                   ],
                 ),
               ),
             ),

           ],
         ),
        // backgroundColor: Colors.grey.shade100,
      ),
    );
  }
}


//Password
// TextFormField(
//
//
//   obscureText: obscure,
//   decoration: InputDecoration(
//       iconColor: First_Blue,
//
//       focusColor: First_Blue,
//       hintText: "Password",
//       labelText: "Password",
//
//       hintStyle: TextStyle(color: Third_Blue),
//       labelStyle: TextStyle(fontSize: 20,color: Third_Blue,),
//       prefixIcon: Icon(
//         Icons.password,
//         color: Third_Blue,
//       ),
//       suffixIcon: IconButton(
//         onPressed: (){
//           setState(() {
//             obscure = !obscure;
//           });
//         },
//         icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
//       ),
//       focusedBorder: OutlineInputBorder(
//
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(
//             color: First_Blue,
//             width: 2,
//           )
//       ),
//       enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(
//             color: Second_Blue,
//           )
//       ),
//       border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(8),
//           borderSide: BorderSide(
//               color: Four_Blue
//           )
//       )
//   ),
//   onChanged: (val){
//     setState(() {
//       Password = val;
//     });
//   },
// ),
//
//


// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     ElevatedButton(
//         onPressed: (){
//           setState(() {
//             bool vaidated = formkey.currentState!.validate();
//           });
//         },
//         child:Text("Submit"),
//     ),
//     ElevatedButton(
//       onPressed: (){
//         setState(() {
//          Name_Controller.clear();
//          Email_Controller.clear();
//          Phone_Controller.clear();
//          Address_Controller.clear();
//         });
//       },
//       child:Text("Clear"),
//     ),
//   ],
// )