import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icon.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui_practise/Architecture/new_arrivals_card.dart';

import '../Architecture/suggested_job_card.dart';
import '../data/jobdata.dart';
import '../model/jobclass.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          leading: Icon(LineIcons.creativeCommonsNoDerivativeWorks, color: Colors.black87, size: 25.0,),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Icon(LineIcons.sms, color: Colors.black87, size: 25.0,),
              SizedBox(width: 15,),
              Icon(LineIcons.bell, color: Colors.black87, size: 25.0,)
            ],
          ),

        ),
          child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, right: 15.0, left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hi, Ayeesha👋", style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(29, 41, 64, 1),
                              ),),
                              SizedBox(height: 3,),
                              Text("Don't live life as it comes; control how life comes", style: TextStyle(
                                color: Colors.black45,
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                              ),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 25.0,
                          ),),
                        ],
                      ),

                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[800],
                        //   borderRadius: BorderRadius.circular(25),
                        // ),
                        child: CupertinoTextField(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[200]

                          ),
                          padding: EdgeInsets.only(left: 10),
                          placeholder: "Search jobs",
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(LineIcons.sistrix, size: 25, color: Colors.black45,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 30,),
                      Text("Suggested Jobs", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(29, 41, 64, 1),
                      ),
                      ),


                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 180,
                                    child: ListView(
                                      shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: Job_List.map((cData) => SuggestedJobCard(
                                      cData.position,
                                      cData.title,
                                      cData.location,
                                    )).toList(),
                        ),
                                  ),
                                ),
                              ],
                            ),

                      SizedBox(height: 30,),
                      Text("New Arrivals", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(29, 41, 64, 1),
                      ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 350,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: Job_List.map((nAData) => NewArrivalsCard(nAData.position, nAData.title)).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                ),
                ),
          ),),
    );
  }
}
