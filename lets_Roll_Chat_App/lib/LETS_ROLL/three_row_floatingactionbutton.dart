import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ThreeRowFloatingActionButton extends StatelessWidget {
  const ThreeRowFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 55,
            width: 55,
            child: FittedBox(
              child: badges.Badge(
                badgeStyle: const badges.BadgeStyle(
                    padding: EdgeInsets.all(7),
                    badgeColor: Color(0xff545454),
                    borderSide: BorderSide(color: Color(0xffEDC63D), width: 3)),
                badgeContent: const Text("3",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                child: FloatingActionButton(
                    elevation: 0,
                    onPressed: () {},
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    backgroundColor: const Color(0xffCD0303),
                    child: const Icon(Icons.whatshot, size: 30, color: Colors.white,)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: 50,
            child: FittedBox(
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: const Color(0xffEFC737),
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Icon(Icons.multiple_stop_outlined, size: 40, color: Colors.white,),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            width: 40,
            child: FittedBox(
              child: FloatingActionButton(
                elevation: 0,
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                backgroundColor: const Color(0xffF80000),
                child: const Icon(Icons.add, size: 40, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
