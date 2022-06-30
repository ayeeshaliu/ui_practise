import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/model/jobclass.dart';
import 'package:ui_practise/screen/home_screen.dart';

void main() {
  runApp( (UiPractise()));
}

class UiPractise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   DefaultMaterialLocalizations.delegate,
      //   DefaultCupertinoLocalizations.delegate,
      //   DefaultWidgetsLocalizations.delegate,
      // ],
      title: "UI PRACTISE",
      // theme: CupertinoThemeData(
      //   primaryColor: Colors.greenAccent[100],
      // ),
      home: HomeScreen(),
    );
  }
}



