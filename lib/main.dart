import 'package:flutter/material.dart';
import 'dart:io';



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
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(81.0),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('PIG WEIGHT \n CALCULATOR',
                      style: TextStyle(fontSize: 35, color: Colors.red),
                      textAlign: TextAlign.center),
                ),
              ),
              Image.asset('assets/images/pig.png', width: 300),
              Row(
                children: [
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                    ),
                  )),
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ))
                ],
              )
            ],
          ),
          const SizedBox(
            width: 200.0,
            height: 150.0,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: const Text('CALCULATE'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  alignment: Alignment.center),
              onPressed: () {},

            ),
          )
        ],
      ),
    ));
  }
}
