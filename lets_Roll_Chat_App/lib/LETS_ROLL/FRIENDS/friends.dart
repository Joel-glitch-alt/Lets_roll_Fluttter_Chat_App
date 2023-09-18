import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../app_bottom_navbar.dart';
import '../letsroll_appbar.dart';
import 'friends_chat.dart';
import 'friends_group.dart';

//This file defines the Friends section of the Let's Roll app

class FriendsSection extends StatefulWidget {
  const FriendsSection({super.key});

  @override
  State<FriendsSection> createState() => _FriendsSectionState();
}

class _FriendsSectionState extends State<FriendsSection> {
  int _selected = 0;
  int _itemSelected = 0;
  int _pageSelected = 2;

  final friendsBodyContent = <Widget>[
    const FriendsChats(),
    const FriendsGroups(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: LetsRollAppBar(
          textItemOneOnTap: () {
            setState(() {
              _itemSelected = 0;
              context.go('/');
            });
          },
          itemOnePageSelected: _itemSelected == 0,
          textItemTwoOnTap: () {
            setState(() {
              _itemSelected = 1;
              context.go('/providersPage');
            });
          },
          itemTwoPageSelected: _itemSelected == 1,
          textItemThreeOnTap: () {
            setState(() {
              _itemSelected = 2;
              context.go('/mycustomersPage');
            });
          },
          itemThreePageSelected: _itemSelected == 2),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 1),
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              clipBehavior: Clip.hardEdge,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 214, 214, 214),
                      spreadRadius: 1,
                      blurRadius: 8,
                    ),
                  ]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MenuText(
                    menuText: 'Chats',
                    selected: _selected == 0,
                    onPressed: () {
                      setState(() {
                        _selected = 0;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Groups',
                    selected: _selected == 1,
                    onPressed: () {
                      setState(() {
                        _selected = 1;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Calls',
                    selected: _selected == 2,
                    onPressed: () {
                      setState(() {
                        _selected = 2;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Hightlights',
                    selected: _selected == 3,
                    onPressed: () {
                      setState(() {
                        _selected = 3;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 232,
            child: friendsBodyContent[_selected],
          ),
        ],
      ),
      //floatingActionButton: const ThreeRowFloatingActionButton(),
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

class MenuText extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          foregroundColor: selected ? Colors.white : Colors.black,
          backgroundColor:
              selected ? const Color(0xFFF17B7B) : Colors.transparent,
          padding: const EdgeInsets.fromLTRB(26, 4, 26, 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        menuText,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
