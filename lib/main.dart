import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyClass();
  }
}

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        //add center title
        centerTitle: true,
        title: Text('Need Blood', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF757275),
            radius: 80.0,
            //add icon image in the circle
            child: Image.asset(
              'assets/images/blood_donate.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Donate Blood",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        ],
      )),
    ));
  }
}
