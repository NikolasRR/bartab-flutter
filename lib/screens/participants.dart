import 'dart:developer';

import 'package:bar_tab/components/header.dart';
import 'package:bar_tab/components/participant.dart';
import 'package:flutter/material.dart';

class ParticipantsPage extends StatelessWidget {
  ParticipantsPage({Key? key}) : super(key: key);
  List<String> participants = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 232, 170, 1),
      body: Column(children: <Widget>[
        const Header(),
        ParticipantList(participants: participants),
        ParticipantForm(participants: participants)
      ]),
    );
  }
}

class ParticipantList extends StatelessWidget {
  const ParticipantList({Key? key, required this.participants})
      : super(key: key);
  final List<String> participants;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: participants.length,
      itemBuilder: (BuildContext context, int index) {
        return Participant(name: participants[index]);
      },
      reverse: true,
    ));
  }
}

class ParticipantForm extends StatefulWidget {
  ParticipantForm({Key? key, required this.participants}) : super(key: key);
  List<String> participants;

  @override
  State<ParticipantForm> createState() => _ParticipantFormState();
}

class _ParticipantFormState extends State<ParticipantForm> {

  @override
  Widget build(BuildContext context) {
    String participant = "";

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 60,
              child: TextField(
                onSubmitted: (value) {
                  widget.participants.add(value);
                  log("message");
                },
                style: const TextStyle(height: 60),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.white),
              ),
            ),
            SizedBox(
              width: 90,
              height: 60,
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: const Color.fromRGBO(139, 69, 19, 1),
                    backgroundColor: const Color.fromRGBO(255, 215, 0, 1),
                  ),
                  onPressed: null,
                  child: const Text("add")),
            )
          ],
        ),
        SizedBox(
          width: 340,
          height: 60,
          child: TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: const Color.fromRGBO(255, 215, 0, 1),
                  backgroundColor: const Color.fromRGBO(139, 69, 19, 1)),
              onPressed: null,
              child: const Text("continue")),
        )
      ],
    );
  }
}
