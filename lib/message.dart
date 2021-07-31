//import 'package:agroapp/home_page.dart';
import 'package:flutter/material.dart';
import 'create_message.dart';

class SendMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightGreen),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Image.asset("assets/images/Logo.png"),
      ),

      body:
      const Center(child: Text('No Messages to Show!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateMessage()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}

