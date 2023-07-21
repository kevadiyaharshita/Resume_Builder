import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/globals/Global_class.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/utils/MyRoutes.dart';
import 'package:resume_builder/views/components/myBackButton.dart';
import '../components/myAppBar.dart';
import 'dart:io';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  int currentIndex = 0;

  bool obscure = true;
  RegExp emailRx = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  TextEditingController name_controller = TextEditingController(text: Global.Name);
  TextEditingController email_controller = TextEditingController(text: Global.Email);
  TextEditingController phone_controller = TextEditingController(text: Global.Phone);
  TextEditingController address_controller = TextEditingController(text: Global.address);



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
                         // padding: EdgeInsets.all(16),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(color: First_Blue),
                           borderRadius:BorderRadius.circular(8)
                         ),

                         child: Form(

                           key: formkey,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                           child: Column(
                             children: [

                               //Name
                               Padding(
                                 padding: EdgeInsets.all(16),
                                 child: TextFormField(

                                   keyboardType: TextInputType.name,
                                   textInputAction: TextInputAction.next,
                                   style: TextStyle(color: First_Blue),
                                   // initialValue: Global.Name,
                                   controller: name_controller,
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
                               ),
                               SizedBox(height: 16,),

                               //Email
                               Padding(
                                 padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                                 child: TextFormField(

                                   keyboardType: TextInputType.emailAddress,

                                   textInputAction: TextInputAction.next,
                                   style: TextStyle(color: First_Blue),
                                   // initialValue: Global.Email,
                                   controller: email_controller,
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
                               ),

                               SizedBox(height: 16,),

                               //Phone
                               Padding(
                                 padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                                 child: TextFormField(
                                   style: TextStyle(color: First_Blue),
                                   keyboardType: TextInputType.phone,

                                   // initialValue: Global.Phone,
                                   controller: phone_controller,
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
                               ),

                               SizedBox(height: 16,),

                               //Address
                               Padding(
                                 padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                                 child: TextFormField(
                                   maxLines: 3,
                                   // textAlign: TextAlign.start,

                                   style: TextStyle(color: First_Blue),
                                   keyboardType: TextInputType.streetAddress,
                                   textInputAction: TextInputAction.newline,
                                   // initialValue: Global.address,
                                   controller: address_controller,
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
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     TextButton(onPressed: (){
                                       setState(() {
                                         formkey.currentState!.reset();

                                         Global.address = Global.Phone = Global.Email =Global.Name = null;

                                         name_controller.clear();
                                         email_controller.clear();
                                         phone_controller.clear();
                                         address_controller.clear();
                                       });
                                     },
                                         child: Text("Clear", style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 18,
                                             fontWeight: FontWeight.bold),)
                                     ),
                                     Spacer(),
                                     TextButton(onPressed: (){
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

                                   ],
                                 ),
                               )
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
                           border: Border.all(color: First_Blue,width: 1),
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
                                       image:(Global.image != null)?DecorationImage(
                                         image: FileImage(Global.image!),
                                         fit: BoxFit.cover
                                       ):DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2015/03/04/22/35/avatar-659651_1280.png'),fit: BoxFit.cover),


                                       boxShadow: [
                                         BoxShadow(
                                             color: First_Blue,
                                             blurRadius: 3
                                         )
                                       ],

                                     ),
                                     alignment: Alignment.center,

                                   ),
                                   TextButton(
                                     onPressed: (){

                                       ImagePicker picker = ImagePicker();
                                       XFile? file;

                                       showDialog(context: context, builder: (context) => AlertDialog(

                                         title: Text("Pick Image"),
                                         // backgroundColor: Six_Blue,

                                         content: Text("Choose the sourse for your image"),
                                         actions: [

                                           ElevatedButton(


                                             onPressed: () async {
                                               file = await picker.pickImage(source: ImageSource.camera);

                                               if(file != null){
                                                 setState(() {
                                                   Global.image = File(file!.path);
                                                 });
                                               }

                                               Navigator.of(context).pop();
                                             },
                                             child: Text("Camera",),
                                           ),

                                           ElevatedButton(
                                             onPressed: () async {
                                               file = await picker.pickImage(source: ImageSource.gallery);

                                               if(file != null){
                                                 setState(() {
                                                   Global.image = File(file!.path);
                                                 });
                                               }

                                               Navigator.of(context).pop();
                                             },
                                             child: Text("Gallary"),
                                           ),
                                         ],
                                       ));

                                     },
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
                                 setState(() {
                                   Global.image = null;
                                 });
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