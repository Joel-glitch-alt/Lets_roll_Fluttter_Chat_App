import 'package:flutter/material.dart';

//This file defines the Questions section of the Scheduled lecture page

class Questions extends StatelessWidget {
  const Questions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.only(top: 10, bottom: 7),
      height: 320,
      child: ListView(
        children: const [
          QuestionsIncomingMessages(
              name: 'Philip Marlow',
              message:
                  'Mr Jason, the snippet you showed for creating the anchor in the navbar, can you please explain how it works for me?',
              time: '2 days ago'),
          QuestionsIncomingMessages(
              name: 'Kofi Assare',
              message:
                  'Mrs Lucy, the login system in the user management codes is not working for me. I have tried all I can. see my code',
              time: '27 hours ago'),
        ],
      ),
    );
  }
}

class QuestionsIncomingMessages extends StatefulWidget {
  final String name;
  final String message;
  final String time;

  const QuestionsIncomingMessages({
    required this.name,
    required this.message,
    required this.time,
    super.key,
  });

  @override
  State<QuestionsIncomingMessages> createState() =>
      _QuestionsIncomingMessagesState();
}

class _QuestionsIncomingMessagesState extends State<QuestionsIncomingMessages> {
  bool showWidget = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 9, left: 12, top: 5),
          child: Container(
            width: 320,
            padding: const EdgeInsets.fromLTRB(15, 4, 3, 4),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 191, 191, 191),
                    blurRadius: 3.0,
                    spreadRadius: 2.0,
                  ), //BoxShad
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.name}     -     ${widget.time}',
                      style: const TextStyle(
                          color: Color(0xFF4491E3),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                    Text(
                      widget.message,
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.only(right: 6, bottom: 4, top: 4),
                    child: Text(
                      showWidget ? 'Hide Answer' : 'Show Answer',
                      style: const TextStyle(
                          color: Color(0xFF4491E3),
                          fontWeight: FontWeight.w700,
                          fontSize: 11),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      showWidget = !showWidget;
                    });
                  },
                ),
                showWidget ? const Text('This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...', softWrap: true,style: TextStyle(fontSize: 11,),) : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}