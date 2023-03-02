import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SpeedDial(

        // childPadding: EdgeInsets.all(10),
        spaceBetweenChildren: 10,
        childrenButtonSize: Size(180, 50),
        backgroundColor: Colors.orange,
        activeIcon: Icons.close,
        icon: Icons.add,
        useRotationAnimation: true,
        children: [
          SpeedDialChild(
            backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.photo,color: Colors.white),
                  SizedBox(width: 10,),
                  Text("Add Media",style: TextStyle(color: Colors.white)),
                ],
              )),
          SpeedDialChild(
              backgroundColor: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.signpost_rounded,color: Colors.white),
                  SizedBox(width: 10,),
                  Text("Add Post",style: TextStyle(color: Colors.white)),
                ],
              )),
        ],
      ),
    );
  }
}
