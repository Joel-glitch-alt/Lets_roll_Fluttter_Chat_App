import 'package:flutter/material.dart';

//This file defines the BottomNavigationBar of the Scheduled lecture page

class ScheduledLectureNavBar extends StatefulWidget {
  const ScheduledLectureNavBar({super.key});

  @override
  State<ScheduledLectureNavBar> createState() => _ScheduledLectureNavBarState();
}

class _ScheduledLectureNavBarState extends State<ScheduledLectureNavBar> {
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      child: Container(
        height: 65,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFFE6FBDF),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 207, 207, 207),
              blurRadius: 6.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            width: 320,
            height: 50,
            child: TextField(
              controller: textController,
              onChanged: (value) {
                setState(() {});
              },
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Type a message to your classmates",
                hintStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9292)),
                contentPadding: const EdgeInsets.only(left: 30.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
              decoration: const BoxDecoration(
                  color: Color(0xFF4491E3),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const FittedBox(
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}