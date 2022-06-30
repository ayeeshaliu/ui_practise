import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';

class SuggestedJobCard extends StatelessWidget {

  final String position;
  final String title;
  final String location;
  
  SuggestedJobCard( this.position,  this.title, this.location,);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.tealAccent.withOpacity(0.22),
      child: Container(
        height: 180,
        width: 150,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Icon(LineIcons.spotify, size: 35,color: Colors.green[700],),
            SizedBox(height: 20,),
            Text(position, style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10,),
            Text(title,),
            SizedBox(height: 10,),
            Text(location, style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
