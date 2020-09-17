import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  final String name;

  const HomeScreen({Key key, this.name}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState(name);
}

class _HomeScreenState extends State<HomeScreen> {

  var counter = 0;
  String name;
  _HomeScreenState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Second Page"),



      ),

      body: ListView(
        children: <Widget>[

          Text("This is our Second Page"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(onPressed: (){

              setState(() {
                counter++;
              });

            }, child: Icon(

              Icons.add ),
              color: Colors.cyan,
              
              ),
          ),

          Text(counter.toString()),

          FlatButton(
            color: Colors.red,
            onPressed: (){

              print(name);

              Navigator.pop(context);

          }, child: Text("Move Back"))
        ],

      ),
      
    );
  }
}