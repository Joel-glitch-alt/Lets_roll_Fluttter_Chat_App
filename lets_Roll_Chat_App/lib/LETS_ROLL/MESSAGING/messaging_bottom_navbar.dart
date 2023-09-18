import 'package:flutter/material.dart';
import 'dart:math' as math;

class MessagingBottomNavBar extends StatefulWidget {
  const MessagingBottomNavBar({super.key});

  @override
  State<MessagingBottomNavBar> createState() => _MessagingBottomNavBarState();
}

class _MessagingBottomNavBarState extends State<MessagingBottomNavBar> {

  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      child: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Center(
                  child: Icon(
                    Icons.mic,
                    size: 28,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 310,
              height: 50,
              child: TextField(
                controller: textController,
                onChanged: (value) {
                  setState(() {});
                },
                style: const TextStyle(color: Colors.black,),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Type a message",
                  hintStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 50,
                      child: Center(
                        child: Transform.rotate(
                            angle: -90 * math.pi / 180,
                            child: const Icon(
                              Icons.attachment,
                              size: 28,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xFFA1A1A1),
                    ),
                    child: Center(
                      child: Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: const Icon(
                            Icons.assistant_navigation,
                            size: 35,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}