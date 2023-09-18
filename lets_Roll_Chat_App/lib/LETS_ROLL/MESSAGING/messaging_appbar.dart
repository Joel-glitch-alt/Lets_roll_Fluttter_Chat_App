import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MessagingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String imageUrl;
  final VoidCallback onTap;
  const MessagingAppBar({required this.name, required this.imageUrl, super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 3,
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: onTap,
                          child: const Icon(Icons.arrow_back),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 14, left: 2),
                          child: CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(imageUrl),
                          ),
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 4),
                          child: Text(
                            '@${name.toLowerCase().replaceAll(' ', '')}',
                            style: const TextStyle(
                              color: Color(0xFF8C8989),
                              fontSize: 11,
                            ),
                          )),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(1),
                          margin: const EdgeInsets.only(left: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF1A73E9),
                                Color(0xFF8E67BE),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 225, 225, 225),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
                                child: Text(
                                  'FOLLOW',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10,
                                      color: Color(0xFF412929)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 75);
}
