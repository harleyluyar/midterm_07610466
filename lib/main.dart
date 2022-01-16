import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(81.0),
        child: const Text('PIG WEIGHT \n CALCULATOR',
            style: TextStyle(fontSize: 34, color: Colors.red),
            textAlign: TextAlign.center),
      ),
    ));
  }
}
