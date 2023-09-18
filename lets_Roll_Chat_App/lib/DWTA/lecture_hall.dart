import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//The import statements below import the various components required for this UI
import '../LETS_ROLL/app_bottom_navbar.dart';
import 'dwta_appBar.dart';
import 'week.dart';

class LectureHall extends StatefulWidget {
  const LectureHall({
    super.key,
  });

  @override
  State<LectureHall> createState() => _LectureHallState();
}

class _LectureHallState extends State<LectureHall> {
  int _pageSelected = 1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const DWTAAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 6, left: 6),
        child: ListView(
          children: [
            SizedBox(
              width:
                  screenWidth, // This gives Container the holds each WeekTeach widget a width of the screen size
              height: 200,
              //This defines the image at the top of the page just below the appbar
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRM5k2MsBuj4aLX5e2Lo59Wgh4Hp93bbCv0HKazwmXaQWxQxB9HwF4C0Yd7ygDi_0ZuR4o&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
            //This defines the two lines of text(the program topic and some description) the is just below the image
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Android Native - Mobile Development ',
                style: TextStyle(
                    color: Color(0xFFD42222),
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(left: 5, top: 7),
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
            //This defines the course phases, duration and the list of Program Instructiors section
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
                        width: screenWidth - 12,
                        color: const Color(0xFFF2DFFB),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //This defines the course phases
                            Row(
                              children: [
                                Text(
                                  'Phase I: 6 - 8 wks',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF7C7777)),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Phase II: 4 - 6 wks',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF7C7777)),
                                ),
                              ],
                            ),
                            //This defines the course duration section
                            Text(
                              'Duration: 3 months',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF7C7777)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Ths defines the list of program instructors
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                    width: screenWidth - 12,
                    color: const Color(0xFFE6FBDF),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd'),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?w=740&t=st=1688743395~exp=1688743995~hmac=ed73b1a60facc3f525a5a5217af7628c0ae91669804a5fa33cd7fe4d54fdc723'),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/good-looking-young-woman-sunglasses-smiling_176420-20749.jpg?w=740&t=st=1688743681~exp=1688744281~hmac=41a731a0323c285de864659240ff79955b744a29c20b67d068933bc0cb11b29f'),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            CircleAvatar(
                              radius: 12,
                              backgroundImage: NetworkImage(
                                  'https://img.freepik.com/free-photo/portrait-african-american-man_23-2149072178.jpg?size=626&ext=jpg&ga=GA1.1.1025395206.1687705257&semt=ais'),
                            ),
                          ],
                        ),
                        Text(
                          'Program Instructors',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF7C7777)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //This defines the week topics - course break down
            const WeeklyTopics(),
          ],
        ),
      ),
      //This is the bottom navigation bar
      bottomNavigationBar: BottomNavBar(
          textItemOneOnTap: () {
            setState(() {
              _pageSelected = 0;
            });
          },
          itemOnePageSelected: _pageSelected == 0,
          textItemTwoOnTap: () {
            setState(() {
              _pageSelected = 1;
              context.go('/lectureHallPage');
            });
          },
          itemTwoPageSelected: _pageSelected == 1,
          textItemThreeOnTap: () {
            setState(() {
              _pageSelected = 2;
              context.go('/');
            });
          },
          itemThreePageSelected: _pageSelected == 2),
    );
  }
}

//This defines the week topics - course break down
class WeeklyTopics extends StatelessWidget {
  const WeeklyTopics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        WeekTeach(week: 'Week 1', tutorials: [
          Topics(
              topic: 'Topic 1 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 2 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 3 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 4 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 5 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 6 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 7 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
        ]),
        WeekTeach(week: 'Week 2', tutorials: [
          Topics(
              topic: 'Topic 1 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 2 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 3 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 4 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 5 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 6 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 7 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
        ]),
        WeekTeach(week: 'Week 3', tutorials: [
          Topics(
              topic: 'Topic 1 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 2 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 3 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 4 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 5 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 6 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 7 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
        ]),
        WeekTeach(week: 'Week 4', tutorials: [
          Topics(
              topic: 'Topic 1 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 2 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 3 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 4 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 5 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 6 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 7 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
        ]),
        WeekTeach(week: 'Week 5', tutorials: [
          Topics(
              topic: 'Topic 1 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 2 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 3 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 4 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 5 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 6 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
          Topics(
              topic: 'Topic 7 in Android Native - Mobile Development ',
              videoLink: '',
              lecturelLink: '',
              resourcesLink: ''),
        ]),
      ],
    );
  }
}