import 'package:flutter/material.dart';
import 'package:bar_tab/screens/participants.dart';
import 'package:bar_tab/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 232, 170, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Header(),
          const SizedBox(height: 30,),
          const Text(
            "Welcome to BarTab",
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "The app to help divide the bar tab with your friends!",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 80),
          
          const Text(
            "1.first, create a table \n 2. second, add the participants \n 3. finally, tell us the items!", 
            style: TextStyle(
              height: 2,
              fontSize: 20,
              color: Color.fromRGBO(249, 86, 54, 1),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20,),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParticipantsPage()),
              );
            },
            icon: const Icon(
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