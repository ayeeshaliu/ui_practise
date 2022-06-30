import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class NewArrivalsCard extends StatelessWidget {

  final String position;
  final String title;

  NewArrivalsCard(this.position, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      //width: 200,
      child: Card(
        color: Colors.white.withOpacity(0.8),
        elevation: 0.3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: Icon(LineIcons.twitter, size: 30, color: Colors.lightBlue,),
          title: Text(position, style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          subtitle: Text(title),
          trailing: Icon(LineIcons.chevronCircleRight, color: Colors.black,),

        ),
      ),
    );
  }
}
