import 'package:flutter/material.dart';

//This file defines the main bottom navigation bar

class BottomNavBar extends StatefulWidget {
  final bool
      itemOnePageSelected; //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final bool
      itemTwoPageSelected; //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final bool
      itemThreePageSelected; //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final VoidCallback
      textItemOneOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped
  final VoidCallback
      textItemTwoOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped
  final VoidCallback
      textItemThreeOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped

  const BottomNavBar(
      {super.key,
      required this.itemOnePageSelected,
      required this.itemTwoPageSelected,
      required this.itemThreePageSelected,
      required this.textItemOneOnTap,
      required this.textItemTwoOnTap,
      required this.textItemThreeOnTap});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),

        //This stack widget is used to place the profile ico and the menu icon above the list of text buttons in the middle
        child: Stack(children: [
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: widget.textItemOneOnTap,
                  child: Container(
                    height: 80,
                    color: widget.itemOnePageSelected
                        ? Colors.blue
                        : Colors.white,
                    padding: const EdgeInsets.only(right: 18, left: 18),
                    child: Center(
                      child: Center(
                        child: Text(
                          'TechSpace',
                          style: TextStyle(
                              fontSize: 17,
                              color: widget.itemOnePageSelected
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: widget.textItemTwoOnTap,
                  child: Container(
                    height: 80,
                    color: widget.itemTwoPageSelected
                        ? Colors.blue
                        : Colors.white,
                    padding: const EdgeInsets.only(right: 18, left: 18),
                    child: Center(
                      child: Center(
                        child: Text(
                          'DWTA',
                          style: TextStyle(
                              fontSize: 17,
                              color: widget.itemTwoPageSelected
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: widget.textItemThreeOnTap,
                  child: Container(
                    height: 80,
                    color: widget.itemThreePageSelected
                        ? Colors.blue
                        : Colors.white,
                    padding: const EdgeInsets.only(right: 18, left: 18),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Let\'s Roll',
                          style: TextStyle(
                              fontSize: 17,
                              color: widget.itemThreePageSelected
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),

          //This row defines the two icons, the profile and menu icons, at the far ends of the bottom navigation bar
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Material(
                  elevation: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: const Center(
                      child: Icon(
                        Icons.menu,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Material(
                  elevation: 20,
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: const Center(
                      child: CircleAvatar(
                        radius: 15,

                        //Profile picture of user
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/african-american-man-wearing-stylish-hat_23-2148634061.jpg?w=740&t=st=1688058987~exp=1688059587~hmac=a75950e5fc90a6ac5b89ec712e0df60ada8ad7df48abe292072695a2715446cd'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}