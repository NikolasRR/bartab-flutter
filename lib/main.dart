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
    return AppBar(
      backgroundColor: const Color.fromRGBO(139, 69, 19, 1),
      title: const Text("BarTab",
          style:
              TextStyle(color: Color.fromRGBO(255, 215, 0, 1), fontSize: 40)),
      centerTitle: true,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 232, 170, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Header(),
          SizedBox(height: 30,),
          Text(
            "Welcome to BarTab",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "The app to help divide the bar tab with your friends!",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          
          Text(
            "1.first, create a table \n 2. second, add the participants \n 3. finally, tell us the itens!",
            style: TextStyle(
              height: 2,
              fontSize: 20,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.add_box_rounded,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
            iconSize: 150,
          )
        ],
      ),
    );
  }
}
