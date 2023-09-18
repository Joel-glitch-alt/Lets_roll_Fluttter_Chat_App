import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../app_bottom_navbar.dart';
import '../letsroll_appbar.dart';
import 'providers_stores.dart';

//This file defines the Providers section of the Let's Roll app

class ProvidersSection extends StatefulWidget {
  const ProvidersSection({super.key});

  @override
  State<ProvidersSection> createState() => _ProvidersSectionState();
}

class _ProvidersSectionState extends State<ProvidersSection> {
  int _selected = 0;
  int _itemSelected = 1;
  int _pageSelected = 2;

  final providersBodyContent = <Widget>[
    const ProvidersStores(),
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
                    menuText: 'Stores',
                    selected: _selected == 0,
                    onPressed: () {
                      setState(() {
                        _selected = 0;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Garages',
                    selected: _selected == 1,
                    onPressed: () {
                      setState(() {
                        _selected = 1;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Employers',
                    selected: _selected == 2,
                    onPressed: () {
                      setState(() {
                        _selected = 2;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'Workers',
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
            child: providersBodyContent.length == 1 ? const ProvidersStores() : providersBodyContent[_selected],
          ),
        ],
      ),
      //floatingActionButton: const TwoRowFloatingActionButton(),
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
          padding: const EdgeInsets.fromLTRB(23, 4, 23, 4),
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
