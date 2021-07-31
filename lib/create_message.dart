import 'package:flutter/material.dart';

class CreateMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
//      color: Colors.lightGreen,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.lightGreen,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text('To:'
            'Write a New Message',
          style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Montserrat',
              color: Colors.brown
          ),),
      ),

    );
  }
}
