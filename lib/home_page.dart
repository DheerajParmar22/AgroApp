import 'package:agroapp/message.dart';
import 'package:agroapp/profile.dart';
import 'package:flutter/material.dart';
import 'message.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer : new AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightGreen),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Image.asset("assets/images/Logo.png"),
      ),

      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                child: Text('State Update'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            Expanded(
              child: ElevatedButton(
                child: Text('District Update'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            Expanded(
              child: ElevatedButton(
                child: Text('Taluka Update'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),

        persistentFooterButtons: [
          Row(
//            Image.asset('assets/images/profile.jpg')
          )
        ],


        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.amberAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Colors.amberAccent,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SendMessage()),
                    );
                  },
                ),
                new IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.amberAccent,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.amberAccent,
                  ),
                  onPressed: null,
                ),
                new IconButton(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.amberAccent,
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => editprofile()),
                    );
                  },
                ),
              ],
            ),
          ),
        )



    );
  }
}

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => new _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
              child: new Text("Header"),
          ),
          new ListTile(
            title: new Text("Item 1"),
          ),
        ],
      ),
    );
  }
}



