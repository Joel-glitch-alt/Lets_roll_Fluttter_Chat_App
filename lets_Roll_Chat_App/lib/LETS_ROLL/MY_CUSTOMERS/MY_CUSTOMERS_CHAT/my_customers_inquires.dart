import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app_bottom_navbar.dart';
import '../../letsroll_appbar.dart';
import 'my_customers_inquiresfromcustomers.dart';

//This file defines the Providers section of the Let's Roll app

class MyCustomersInquiresSection extends StatefulWidget {
  const MyCustomersInquiresSection({super.key});

  @override
  State<MyCustomersInquiresSection> createState() =>
      _MyCustomersInquiresSectionState();
}

class _MyCustomersInquiresSectionState
    extends State<MyCustomersInquiresSection> {
  int _selected = 0;
  int _itemSelected = 2;
  int _pageSelected = 2;

  final providersInquiresBodyContent = <Widget>[
    const MyCustomersInquiresFromCustomers(),
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
            margin: const EdgeInsets.only(bottom: 10),
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
                    menuText: 'Inquires from Customers',
                    selected: _selected == 0,
                    onPressed: () {
                      setState(() {
                        _selected = 0;
                      });
                    },
                  ),
                  MenuText(
                    menuText: 'My MakersTrust Orders',
                    selected: _selected == 1,
                    onPressed: () {
                      setState(() {
                        _selected = 1;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
            width: MediaQuery.of(context).size.width,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Johnny Watson',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3C3C43)),
                ),
                Text(
                  '1245 Inquires',
                  style: TextStyle(fontSize: 16, color: Color(0xFF3C3C43)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 282,
            child: providersInquiresBodyContent.length == 1
                ? const MyCustomersInquiresFromCustomers()
                : providersInquiresBodyContent[_selected],
          ),
        ],
      ),
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
