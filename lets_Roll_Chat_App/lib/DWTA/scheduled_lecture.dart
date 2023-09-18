import 'package:flutter/material.dart';

import 'dwta_appBar.dart';
import 'scheduledlecture_assignment.dart';
import 'scheduledlecture_comments.dart';
import 'scheduledlecture_navbar.dart';
import 'scheduledlecture_questions.dart';

//This imports import the components required for the page

class ScheduledLecture extends StatefulWidget {
  const ScheduledLecture({super.key});

  @override
  State<ScheduledLecture> createState() => _ScheduledLectureState();
}

class _ScheduledLectureState extends State<ScheduledLecture> {
  int _selected = 0;

  final uniquePageContent = <Widget>[
    const Comments(),
    const Questions(),
    const Assignment()
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DWTAAppBar(),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 6, left: 6),
          child: ListView(
            children: [
              SizedBox(
                width: screenWidth,
                height: _selected == 2 ? 50 : 280,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM5k2MsBuj4aLX5e2Lo59Wgh4Hp93bbCv0HKazwmXaQWxQxB9HwF4C0Yd7ygDi_0ZuR4o&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: const Color(0xFFF2DFFB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 12, 5, 12),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Topic 8 - Android Native - Mobile Development ',
                                  style: TextStyle(
                                      color: Color(0xFFD42222),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 7),
                                  child: Text(
                                    'On completion of this study program taught in the Apprentice study model, you ...',
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Color(0xFFD42222),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            MenuText(
                              menuText: 'Comments',
                              selected: _selected == 0,
                              onPressed: () {
                                setState(() {
                                  _selected = 0;
                                });
                              },
                            ),
                            MenuText(
                              menuText: 'Questions',
                              selected: _selected == 1,
                              onPressed: () {
                                setState(() {
                                  _selected = 1;
                                });
                              },
                            ),
                            MenuText(
                              menuText: 'Assignment',
                              selected: _selected == 2,
                              onPressed: () {
                                setState(() {
                                  _selected = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              uniquePageContent[_selected],
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ScheduledLectureNavBar(),
    );
  }
}

class MenuText extends StatefulWidget {
  final String menuText;
  final bool selected;
  final VoidCallback onPressed;

  const MenuText({
    required this.menuText,
    required this.selected,
    required this.onPressed,
    super.key,
  });

  @override
  State<MenuText> createState() => _MenuTextState();
}

class _MenuTextState extends State<MenuText> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 40,
      color: Colors.white,
      width: (screenWidth - 12) * 1 / 3,
      child: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
            foregroundColor:
                widget.selected ? const Color(0xFF4491E3) : Colors.white,
            backgroundColor:
                widget.selected ? Colors.white : const Color(0xFFF17B7B),
            shape: const BeveledRectangleBorder()),
        child: Text(
          widget.menuText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}