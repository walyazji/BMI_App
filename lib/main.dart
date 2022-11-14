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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        canvasColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white70),
        ),
      ),

      // home: const MyHomePage(),
      home: const Result(
        age: 2,
        isMale: true,
        result: 40.0,
      ),
    );
  }
}
