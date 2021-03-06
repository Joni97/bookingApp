import 'package:flutter/material.dart';
import 'package:hello_world1/dashboard.dart';
import 'package:hello_world1/menuDrawer.dart';
//import 'bookingDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Booking App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking App"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {
              print("this is counter:");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("H"),
                ),
                PopupMenuItem(
                  child: Text("H"),
                ),
                PopupMenuItem(
                  child: Text("H"),
                ),
              ];
            },
          )
        ],
      ),
      drawer: MenuDrawer(),
      body: Dashboard(),
    );
  }
}
