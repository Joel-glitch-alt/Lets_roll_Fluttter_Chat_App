import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//The class WeekTech defines the outline of the topics that will be taught each week throughout the course. This component is seen in the Lecture Hall landing page.

class WeekTeach extends StatefulWidget {
  final String week;
  final List tutorials;

  const WeekTeach({required this.week, required this.tutorials, super.key});

  @override
  State<WeekTeach> createState() => _WeekTeachState();
}

class _WeekTeachState extends State<WeekTeach> {

  bool showWidget = false; //The showWidget is used to alter the visibility of the list of weekly topics

  List<Topics> tutorials = []; //The varible tutorials defines the list of topics for the week

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;  // This gives Container the holds each WeekTeach widget a width of the screen size

    //This container holds each WeekTeach widget
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      //The showWidget is used here to alter the visibility of the week's topics. By default, the toics are invisible. When the Week name is tapped, the topics becomes visibe right below it
      child: showWidget
          ? InkWell( //This InkWell defines just the Week name before it is tapped
              onTap: () {
                setState(() {
                  showWidget = !showWidget;
                });
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                width: screenWidth - 12,
                color: const Color(0xFFF17B7B),
                child: Text(
                  widget.week,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
              ),
            )
          : Stack( //This stack defines the week name after it is tapped
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: screenWidth - 12,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(top: 44),
                  //This listView.builder defines the week topics which is scrollable within the container
                  child: ListView.builder(
                      itemCount: widget.tutorials.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.fromLTRB(12, 10, 18, 6),
                          height: 60,
                          decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(width: 0.3)),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.tutorials[index].topic,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF7C7777))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text('Concept Video',
                                      style: TextStyle(
                                          color: Color(0xFF4491E3),
                                          fontWeight: FontWeight.w700, 
                                          fontSize: 11)),
                                  InkWell(
                                    onTap: () {
                                      context.go('/scheduledLecturePage'); //By tapping on the Schedule Lecture option, you are routed to the Scheduled lecture screen
                                    },
                                    child: const Text('Scheduled Lecture',
                                        style: TextStyle(
                                            color: Color(0xFF4491E3),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 11)),
                                  ),
                                  const Text('Resources',
                                      style: TextStyle(
                                          color: Color(0xFF4491E3),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11)),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      showWidget = !showWidget; // This is assigned to the Week name before and after it is tapped hence making them both clickable
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                    width: screenWidth - 12,
                    color: const Color(0xFFF17B7B),
                    child: Text(
                      widget.week,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

//The class Topics defines the list type used to create the list of topics per week
class Topics {
  final String topic;
  final String videoLink;
  final String lecturelLink;
  final String resourcesLink;

  Topics(
      {required this.topic,
      required this.videoLink,
      required this.lecturelLink,
      required this.resourcesLink});
}
