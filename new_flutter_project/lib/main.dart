import 'package:flutter/material.dart';
import 'package:new_flutter_project/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text("App bar"),
        ),
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Text("First Text")),
            Text("Second"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[Text("First Item"), Text("Second Item")],
            ),

            CardForHomePage(
              color: Colors.amberAccent,
              text: "Card 1",


            ),

             CardForHomePage(
              color: Colors.brown,
              text: "Card 2",


            ),

            FlatButton(
              color: Colors.white,
              onPressed: (){

                print("Button Print");

                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen(name: "Moeed",)),
  );

              },
              
               child: Text("Move to 2nd Screen"))


          ],
        ));
  }
}

class CardForHomePage extends StatelessWidget {
  final String text;
  final Color color;

  CardForHomePage({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
               
              ),
            ),
          )
        ],
      ),
    );
  }
}
