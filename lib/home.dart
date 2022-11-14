// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  double heightVal = 172;
  int weightVal = 55;
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Body Mass Index'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              m1Expanded(context, 'male'),
              const SizedBox(
                width: 15,
              ),
              m1Expanded(context, 'female'),
            ],
          ),
        ),
      ),
    );
  }

  Expanded m1Expanded(BuildContext context, String type) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isMale = type == 'male' ? true : false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.teal
                : Colors.blueGrey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                type == 'male' ? Icons.male : Icons.female,
              ),
              const SizedBox(height: 15),
              Text(
                type == 'male' ? 'Male' : 'Female',
                style: Theme.of(context).textTheme.headline1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
