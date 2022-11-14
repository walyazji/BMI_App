import 'package:flutter/material.dart';
import 'result.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Application',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          canvasColor: Colors.black,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            headline2: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w800, color: Colors.white),
            bodyText1: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),

      home: const MyHomePage(),
      // home: const Result(
      //   age: 2,
      //   isMale: true,
      //   result: 40.0,
      // ),
    );
  }
}
