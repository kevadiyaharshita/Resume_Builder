import 'package:flutter/material.dart';
import 'package:resume_builder/utils/Color_utils.dart';
import 'package:resume_builder/views/components/myBackButton.dart';

import '../../utils/MyRoutes.dart';
import '../components/myAppBar.dart';

class ResumeWorkspace extends StatefulWidget {
  const ResumeWorkspace({Key? key}) : super(key: key);

  @override
  State<ResumeWorkspace> createState() => _ResumeWorkspaceState();
}

class _ResumeWorkspaceState extends State<ResumeWorkspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  myAppBar(context,"Resume Workspace"),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Wrap(

              children: MyRoutes.buildOptions.map((e) => GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed(e['name']);
                },
                child: Container(
                  width: 181,
                  height: 150,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Five_Blue,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0,2),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Third_Blue,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: First_Blue,
                                blurRadius: 3
                              )
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            e['icon'],
                             height: 50,

                            // fit: BoxFit.contain,
                            color: First_Blue,)
                      ),
                                // SizedBox(width: 20,),
                                Text(e['title'],
                                style: TextStyle(fontSize: 17,color: First_Blue,fontWeight: FontWeight.bold),
                                ),
                    ],
                  ),
                ),
              )
              //     Card(
              //   margin: EdgeInsets.fromLTRB(0,0, 0, 16),
              //   color: Second_Blue,
              //   child: Padding(
              //     padding: EdgeInsets.all(8),
              //
              //     child: Row(
              //       children: [
              //         SizedBox(width: 5,),
              //           Image.asset(e['icon'],height: 35,color: Colors.white,),
              //           SizedBox(width: 20,),
              //           Text(e['title'],
              //           style: TextStyle(fontSize: 18,color: Colors.white),
              //           ),
              //           Spacer(),
              //          IconButton(
              //              onPressed: (){
              //                Navigator.of(context).pushNamed(e['name']);
              //              },
              //              icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
              //          )
              //       ],
              //     ),
              //   ),
              // )
              ).toList(),
            ),
          ),
        ),
      ),
      // backgroundColor: Six_Blue,
    );
  }
}