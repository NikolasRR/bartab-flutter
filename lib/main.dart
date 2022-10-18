import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(padding: EdgeInsets.all(10), ),
        ), preferredSize: const Size.fromHeight(70));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Welcome to BarTab",
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellow,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "The app to help divide the bar tab with your friends!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          Text(
            "first, create a table!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink,
            ),
            textAlign: TextAlign.center,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.add_box_rounded,
            ),
            iconSize: 150,
          )
        ],
      ),
    );
  }
}
