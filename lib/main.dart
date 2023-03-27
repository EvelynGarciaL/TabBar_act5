import 'package:flutter/material.dart';
//import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.person_sharp)),
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.access_time)),
            ],
          ),
          centerTitle: true,
          title: Text('Libreria EVELALEVE'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.book, size: 350),
            Icon(Icons.person_sharp, size: 350),
            Icon(Icons.info, size: 350),
            Icon(Icons.access_time, size: 350),
          ],
        ),
      ),
    );
  } //Wiget BuildContext
} //MyHomePageState
