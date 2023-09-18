import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


int _selected = 0;
double? screenWidth; 

class DWTAAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DWTAAppBar({Key? key})
      : preferredSize = const Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  State<DWTAAppBar> createState() => _DWTAAppBarState();
}

class _DWTAAppBarState extends State<DWTAAppBar> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        elevation: 5,
        child: Container(
          color: Colors.white,
          child: Row(
            children: [
              MenuText(
                menuText: 'Home',
                selected: _selected == 0,
                onPressed: () {
                  setState(() {
                    _selected = 0;
                  });
                  //context.go('/homePage');
                },
              ),
              MenuText(
                menuText: 'Lecture Hall',
                selected: _selected == 1,
                onPressed: () {
                  setState(() {
                    _selected = 1;
                  });
                  context.go('/lectureHallPage');
                },
              ),
            ],
          ),
        ),
      ),
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
    return Container(
      color: Colors.white,
      width: screenWidth! * 0.5,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: selected ? Colors.black : Colors.white,
            backgroundColor:
                selected ? Colors.transparent : const Color(0xFF4491E3),
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            shape: const BeveledRectangleBorder()),
        child: Text(
          menuText,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}