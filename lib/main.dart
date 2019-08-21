import 'package:flutter/material.dart';


import 'package:splashscreen/splashscreen.dart';



void main() => runApp(
    new MaterialApp(
      home:MyApp(),
      ));

    
    

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 5,
        navigateAfterSeconds: new AfterSplash(),
        
        
        image: new Image.asset('assets/mundo-facil.png'),

        backgroundColor: Colors.white70,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Mundo Facil"),
        loaderColor: Colors.greenAccent
    );
  }
}


class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: new AppBar(
         title: new Text("Mundo Facil",
           style: new TextStyle(
             fontStyle: FontStyle.italic,
             color: Colors.black54
           ),
         ),
         automaticallyImplyLeading: false,
         backgroundColor: Colors.white70,
         centerTitle: true,
     ),
      body:  Text('Mundo Facil APP'),//BasicPage(),
    );
  }
}
