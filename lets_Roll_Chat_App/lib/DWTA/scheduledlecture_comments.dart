import 'package:flutter/material.dart';

//This file defines the Comment section of the Scheduled lecture page

class Comments extends StatelessWidget {
  const Comments({
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
          StudentsMessageIncoming(
              name: 'Johnny Watson',
              message:
                  'This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...',
              time: '3:37 AM'),
          StudentsMessageIncoming(
              name: 'Johnny Watson',
              message:
                  'This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...',
              time: '3:37 AM'),
          StudentsMessageIncoming(
              name: 'Johnny Watson',
              message:
                  'This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...',
              time: '3:37 AM'),
          StudentsMessageOutcoming(
              name: 'Johnny Watson',
              message:
                  'This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...',
              time: '3:37 AM'),
          StudentsMessageOutcoming(
              name: 'Johnny Watson',
              message:
                  'This is the first phrase or sentence of my chat that ... This is the first phrase or sentence of my chat that ...',
              time: '3:37 AM'),
        ],
      ),
    );
  }
}

class StudentsMessageIncoming extends StatelessWidget {
  final String name;
  final String message;
  final String time;

  const StudentsMessageIncoming({
    required this.name,
    required this.message,
    required this.time,
    super.key,
  });

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$name     -     $time',
                  style: const TextStyle(
                      color: Color(0xFF4491E3),
                      fontWeight: FontWeight.w700,
                      fontSize: 11),
                ),
                Text(
                  message,
                  softWrap: true,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class StudentsMessageOutcoming extends StatelessWidget {
  final String name;
  final String message;
  final String time;

  const StudentsMessageOutcoming({
    required this.name,
    required this.message,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 9, right: 12, top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 320,
                padding: const EdgeInsets.fromLTRB(15, 4, 3, 4),
                decoration: const BoxDecoration(
                    color: Color(0xFFE0E4ED),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 191, 191, 191),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      ), //BoxShad
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}