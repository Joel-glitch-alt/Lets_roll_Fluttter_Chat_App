import 'package:flutter/material.dart';

class MessageIncoming extends StatelessWidget {
  final String name;
  final String message;
  final String time;

  const MessageIncoming({
    required this.name,
    required this.message,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, left: 8),
            child: Text(
              name,
              style: const TextStyle(color: Color(0xFF3C3C43)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(alignment: Alignment.bottomRight, children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Text(
                    message,
                    softWrap: true,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(right: 12, bottom: 6),
                    child: Text(
                      time,
                      style: const TextStyle(fontSize: 15),
                    ))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}

class MessageOutgoing extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  const MessageOutgoing({
    required this.name,
    required this.message,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5, right: 8),
            child: Text(
              name,
              style: const TextStyle(color: Color(0xFF3C3C43)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(alignment: Alignment.bottomRight, children: [
                Container(
                  width: 270,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xFFC3D1DD),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Text(
                    message,
                    softWrap: true,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(right: 12, bottom: 6),
                    child: Text(
                      time,
                      style: const TextStyle(fontSize: 15),
                    ))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}