import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'dart:math' as math;

//This file defines the appbar of the Let's Roll 

class LetsRollAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool itemOnePageSelected;  //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final bool itemTwoPageSelected;  //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final bool itemThreePageSelected;  //This is a boolean value which is used to check which of the text items in the second row of the appBar has been selected
  final VoidCallback textItemOneOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped
  final VoidCallback textItemTwoOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped
  final VoidCallback textItemThreeOnTap; //This onTap defines what happens when one of the text itmes in the second row of the appbar is tapped


  const LetsRollAppBar({Key? key, required this.itemOnePageSelected, required this.itemTwoPageSelected, required this.itemThreePageSelected, required this.textItemOneOnTap, required this.textItemTwoOnTap, required this.textItemThreeOnTap})
      : preferredSize = const Size.fromHeight(110.0),
        super(key: key);
  
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //This role defines the profile and the name of the app
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFD500F9),
                              Color(0xFFFF1744),
                            ]),
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            'NA',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const Text(
                          'Let\'s Roll',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    //This row defines the three appbar action icons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            color: Color(0xFF5F5F5F),
                            size: 27,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 20,
                          child: badges.Badge(
                            badgeContent: const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 8,
                                color: Colors.white,
                              ),
                            ),
                            badgeStyle: const badges.BadgeStyle(
                                badgeColor: Color(0xFFEB5757)),
                            child: InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.request_page_outlined,
                                color: Colors.black,
                                size: 27,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.black,
                            size: 27,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          //This Stack region describes the second column of the appbar. A stack widget is used to place the two icons at the far ends on top of the listView of text items in the middle so that the text items will go beneath the icons
          Stack(
              //width: 500,
              alignment: Alignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 20,
                    child: Center(

                      //This listView defines the text items which enable users to move between different parts of the app as their names state
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(
                            width: 43,
                          ),
                          ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      itemOnePageSelected
                                          ? const Color(0xFFD42222)
                                          : const Color(0xFF6C92F4),
                                      itemOnePageSelected
                                          ? const Color(0xFFF17B7B)
                                          : const Color(0xFF1A73E9),
                                    ],
                                  ).createShader(bounds),
                              child: InkWell(
                                onTap: textItemOneOnTap,
                                child: const Text(
                                  'FRIENDS',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 24,
                          ),
                          ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      itemTwoPageSelected
                                          ? const Color(0xFFD42222)
                                          : const Color(0xFF6C92F4),
                                      itemTwoPageSelected
                                          ? const Color(0xFFF17B7B)
                                          : const Color(0xFF1A73E9),
                                    ],
                                  ).createShader(bounds),
                              child: InkWell(
                                onTap: textItemTwoOnTap,
                                child: const Text(
                                  'PROVIDERS',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 24,
                          ),
                          ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      itemThreePageSelected
                                          ? const Color(0xFFD42222)
                                          : const Color(0xFF6C92F4),
                                      itemThreePageSelected
                                          ? const Color(0xFFF17B7B)
                                          : const Color(0xFF1A73E9),
                                    ],
                                  ).createShader(bounds),
                              child: InkWell(
                                onTap: textItemThreeOnTap,
                                child: const Text(
                                  'MY CUSTOMERS',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 43,
                          ),
                        ],
                      ),
                    )),
                
                //This row defines the two icons at the far ends of the second layer of the appbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 35,
                      margin: const EdgeInsets.only(right: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xFFF0EBEB),
                        ),
                      ),
                      child: Center(
                        child: Transform.rotate(
                            angle: 35.73 * math.pi / 180,
                            child: const Icon(
                              Icons.videogame_asset,
                              color: Color(0xFF5A5A5A),
                              size: 23,
                            )),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 35,
                      margin: const EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                        ),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xFFF0EBEB),
                        ),
                      ),
                      child: Center(
                        child: Transform.rotate(
                            angle: -8 * math.pi / 180,
                            child: const Icon(
                              Icons.fact_check,
                              color: Color(0xFF5A5A5A),
                              size: 20,
                            )),
                      ),
                    ),
                  ],
                ),
              ])
        ],
      ),
    );
  }
}